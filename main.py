


import streamlit as st
import pandas as pd
import mysql.connector
from mysql.connector import Error
from datetime import datetime


background_image_url = "https://images.unsplash.com/photo-1729575846511-f499d2e17d79?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmFzaWMlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww"
sidebar_bg_url = "https://png.pngtree.com/background/20220716/original/pngtree-abstract-grass-background-picture-image_1629511.jpg"

st.markdown(
    f"""
    <style>
    /*     MAIN PAGE BACKGROUND  */
    .stApp {{
        background-image: url("{background_image_url}");
        background-size: cover;
        background-attachment: fixed;
        background-position: center;
    }}

    /* SIDEBAR BACKGROUND */
    [data-testid="stSidebar"] {{
        background-image: url("{sidebar_bg_url}");
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        color: white;
    }}

    /* Make sidebar text visible */
    [data-testid="stSidebar"] * {{
        color: black !important;
        font-weight: 500;
    }}
    </style>
    """,
    unsafe_allow_html=True
)






# DATABASE CONNECTION

def create_connection():
    try:
        conn = mysql.connector.connect(
            host="localhost",
            user="root",
            password="akshit8586",
            database="ecommerce_customer_db"
        )
        return conn
    except Error as e:
        st.error(f"Error connecting to MySQL: {e}")
        return None

@st.cache_data
def fetch_table(table_name):
    conn = create_connection()
    if conn:
        df = pd.read_sql(f"SELECT * FROM {table_name}", conn)
        conn.close()
        return df
    else:
        return pd.DataFrame()


# COMMON FUNCTIONS

def execute_query(query, params=None, success_msg="Operation successful!"):
    conn = create_connection()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute(query, params)
            conn.commit()
            st.success(success_msg)
        except Error as e:
            st.error(f"Error: {e}")
        finally:
            conn.close()






            
## Login page

def login_page():
    st.title("User Login")

    username = st.text_input("Username")
    password = st.text_input("Password", type="password")
    login_btn = st.button("Login")

    if login_btn:
        conn = create_connection()
        if conn:
            cursor = conn.cursor(dictionary=True)
            cursor.execute(
                "SELECT * FROM users WHERE username=%s AND password_hash=%s",
                (username, password)
            )
            user = cursor.fetchone()
            conn.close()

            if user:
                st.success(f"Welcome {user['username']} ")
                st.session_state["logged_in"] = True
                st.session_state["user_role"] = user["role"]
                st.session_state["username"] = user["username"]
                st.rerun()
            else:
                st.error("Invalid username or password")

# DASHBOARD


def show_dashboard():
    st.subheader(" E-Commerce Dashboard")

    customers = fetch_table("customers")
    orders = fetch_table("orders")
    products = fetch_table("products")
    order_items = fetch_table("order_items")

    col1, col2, col3 = st.columns(3)
    col1.metric("Total Customers", len(customers))
    col2.metric("Total Orders", len(orders))
    col3.metric("Total Products", len(products))

    st.markdown("### Top 10 Products by Orders")
    if not order_items.empty:
        top_products = order_items.groupby("product_id")["quantity"].sum().sort_values(ascending=False).head(10).reset_index()
        top_products = top_products.merge(products[["product_id", "product_name"]], on="product_id")
        st.bar_chart(top_products.set_index("product_name")["quantity"])

    st.markdown("### Orders Over Time")
    if not orders.empty:
        orders_time = orders.groupby("order_date").size().reset_index(name="Orders")
        orders_time['order_date'] = pd.to_datetime(orders_time['order_date'])
        orders_time = orders_time.sort_values("order_date")
        st.line_chart(orders_time.set_index("order_date")["Orders"])


        
# CUSTOMERS 


def manage_customers():
    st.subheader(" Manage Customers")
    action = st.radio("Action", ["View", "Add", "Update", "Delete"])

    if action == "View":
        st.dataframe(fetch_table("customers"))

    elif action == "Add":
        name = st.text_input("Full Name")
        email = st.text_input("Email")
        phone = st.text_input("Phone")
        gender = st.selectbox("Gender", ["Male", "Female"])
        dob = st.date_input("Date of Birth")
        status = st.selectbox("Status", ["Active", "Inactive", "Blacklisted"])
        if st.button("Add Customer"):
            query = """INSERT INTO customers(full_name,email,phone,gender,dob,status,join_date)
                       VALUES(%s,%s,%s,%s,%s,%s,%s)"""
            execute_query(query, (name, email, phone, gender, dob, status, datetime.today()), "Customer added successfully!")

    elif action == "Update":
        df = fetch_table("customers")
        if not df.empty:
            customer_id = st.selectbox("Select Customer ID", df["customer_id"])
            field = st.selectbox("Field", ["full_name","email","phone","gender","dob","status"])
            value = st.text_input("New Value")
            if st.button("Update"):
                execute_query(f"UPDATE customers SET {field}=%s WHERE customer_id=%s", (value, customer_id), "Customer updated!")

    elif action == "Delete":
        df = fetch_table("customers")
        if not df.empty:
            customer_id = st.selectbox("Select Customer ID", df["customer_id"])
            if st.button("Delete"):
                execute_query("DELETE FROM customers WHERE customer_id=%s", (customer_id,), "Customer deleted!")




# ADDRESSES


def manage_addresses():
    st.subheader(" Manage Addresses")
    action = st.radio("Action", ["View", "Add", "Update", "Delete"])

    if action == "View":
        st.dataframe(fetch_table("addresses"))

    elif action == "Add":
        customer_id = st.number_input("Customer ID", min_value=1)
        address_type = st.text_input("Address Type")
        line1 = st.text_input("Address Line 1")
        line2 = st.text_input("Address Line 2")
        city = st.text_input("City")
        state = st.text_input("State")
        pincode = st.text_input("Pincode")
        country = st.text_input("Country", value="India")
        if st.button("Add Address"):
            query = """INSERT INTO addresses(customer_id,address_type,address_line1,address_line2,city,state,pincode,country)
                       VALUES(%s,%s,%s,%s,%s,%s,%s,%s)"""
            execute_query(query, (customer_id,address_type,line1,line2,city,state,pincode,country), "Address added!")

    elif action == "Update":
        df = fetch_table("addresses")
        if not df.empty:
            address_id = st.selectbox("Select Address ID", df["address_id"])
            field = st.selectbox("Field", ["address_type","city","state","pincode","country"])
            value = st.text_input("New Value")
            if st.button("Update"):
                execute_query(f"UPDATE addresses SET {field}=%s WHERE address_id=%s", (value,address_id), "Address updated!")

    elif action == "Delete":
        df = fetch_table("addresses")
        if not df.empty:
            address_id = st.selectbox("Select Address ID", df["address_id"])
            if st.button("Delete"):
                execute_query("DELETE FROM addresses WHERE address_id=%s", (address_id,), "Address deleted!")




 # PRODUCTS

 
def manage_products():
    st.subheader(" Manage Products")
    action = st.radio("Action", ["View", "Add", "Update", "Delete"])

    if action == "View":
        st.dataframe(fetch_table("products"))

    elif action == "Add":
        name = st.text_input("Product Name")
        category = st.text_input("Category")
        price = st.number_input("Price", min_value=0.0)
        stock = st.number_input("Stock Quantity", min_value=0)
        desc = st.text_area("Description")
        status = st.selectbox("Status", ["Available", "Out of Stock"])
        if st.button("Add Product"):
            query = """INSERT INTO products(product_name,category,price,stock_quantity,description,added_date,status)
                       VALUES(%s,%s,%s,%s,%s,%s,%s)"""
            execute_query(query, (name,category,price,stock,desc,datetime.today(),status), "Product added!")

    elif action == "Update":
        df = fetch_table("products")
        if not df.empty:
            product_id = st.selectbox("Select Product ID", df["product_id"])
            field = st.selectbox("Field", ["price","stock_quantity","status"])
            value = st.text_input("New Value")
            if st.button("Update"):
                execute_query(f"UPDATE products SET {field}=%s WHERE product_id=%s", (value,product_id), "Product updated!")

    elif action == "Delete":
        df = fetch_table("products")
        if not df.empty:
            product_id = st.selectbox("Select Product ID", df["product_id"])
            if st.button("Delete"):
                execute_query("DELETE FROM products WHERE product_id=%s", (product_id,), "Product deleted!")




# ORDERS


def manage_orders():
    st.subheader(" Manage Orders")
    action = st.radio("Action", ["View", "Add", "Update", "Delete"])

    if action == "View":
        st.dataframe(fetch_table("orders"))

    elif action == "Add":
        customer_id = st.number_input("Customer ID", min_value=1)
        shipping_address_id = st.number_input("Shipping Address ID", min_value=1)
        total_amount = st.number_input("Total Amount", min_value=0.0)
        payment_status = st.selectbox("Payment Status", ["Pending","Paid"])
        delivery_status = st.selectbox("Delivery Status", ["Processing","Delivered","Cancelled"])
        if st.button("Add Order"):
            query = """INSERT INTO orders(customer_id,order_date,shipping_address_id,total_amount,payment_status,delivery_status)
                       VALUES(%s,%s,%s,%s,%s,%s)"""
            execute_query(query, (customer_id,datetime.today(),shipping_address_id,total_amount,payment_status,delivery_status), "Order added!")

    elif action == "Update":
        df = fetch_table("orders")
        if not df.empty:
            order_id = st.selectbox("Select Order ID", df["order_id"])
            field = st.selectbox("Field", ["payment_status","delivery_status"])
            value = st.text_input("New Value")
            if st.button("Update"):
                execute_query(f"UPDATE orders SET {field}=%s WHERE order_id=%s", (value,order_id), "Order updated!")

    elif action == "Delete":
        df = fetch_table("orders")
        if not df.empty:
            order_id = st.selectbox("Select Order ID", df["order_id"])
            if st.button("Delete"):
                execute_query("DELETE FROM orders WHERE order_id=%s", (order_id,), "Order deleted!")



## ORDER ITEMS, PAYMENTS, FEEDBACK, USERS


def manage_order_items():
    st.subheader(" Manage Order Items")
    action = st.radio("Action", ["View", "Add", "Delete"])
    if action == "View":
        st.dataframe(fetch_table("order_items"))
    elif action == "Add":
        order_id = st.number_input("Order ID", min_value=1)
        product_id = st.number_input("Product ID", min_value=1)
        qty = st.number_input("Quantity", min_value=1)
        price = st.number_input("Price Each", min_value=0.0)
        if st.button("Add Order Item"):
            query = """INSERT INTO order_items(order_id,product_id,quantity,price_each)
                       VALUES(%s,%s,%s,%s)"""
            execute_query(query, (order_id,product_id,qty,price), "Order Item added!")
    elif action == "Delete":
        df = fetch_table("order_items")
        if not df.empty:
            order_item_id = st.selectbox("Order Item ID", df["order_item_id"])
            if st.button("Delete"):
                execute_query("DELETE FROM order_items WHERE order_item_id=%s", (order_item_id,), "Deleted!")

def manage_payments():
    st.subheader(" Manage Payments")
    action = st.radio("Action", ["View", "Add", "Delete"])
    if action == "View":
        st.dataframe(fetch_table("payments"))
    elif action == "Add":
        order_id = st.number_input("Order ID", min_value=1)
        method = st.text_input("Payment Method")
        txn_id = st.text_input("Transaction ID")
        amount = st.number_input("Amount", min_value=0.0)
        status = st.selectbox("Status", ["Success","Failed","Pending"])
        if st.button("Add Payment"):
            query = """INSERT INTO payments(order_id,payment_date,payment_method,transaction_id,amount,status)
                       VALUES(%s,%s,%s,%s,%s,%s)"""
            execute_query(query, (order_id,datetime.today(),method,txn_id,amount,status), "Payment recorded!")
    elif action == "Delete":
        df = fetch_table("payments")
        if not df.empty:
            payment_id = st.selectbox("Payment ID", df["payment_id"])
            if st.button("Delete"):
                execute_query("DELETE FROM payments WHERE payment_id=%s", (payment_id,), "Deleted!")

def manage_feedback():
    st.subheader(" Manage Feedback")
    action = st.radio("Action", ["View", "Add", "Delete"])
    if action == "View":
        st.dataframe(fetch_table("feedback"))
    elif action == "Add":
        customer_id = st.number_input("Customer ID", min_value=1)
        product_id = st.number_input("Product ID", min_value=1)
        rating = st.slider("Rating", 1, 5)
        comments = st.text_area("Comments")
        if st.button("Add Feedback"):
            query = """INSERT INTO feedback(customer_id,product_id,feedback_date,rating,comments)
                       VALUES(%s,%s,%s,%s,%s)"""
            execute_query(query, (customer_id,product_id,datetime.today(),rating,comments), "Feedback added!")
    elif action == "Delete":
        df = fetch_table("feedback")
        if not df.empty:
            feedback_id = st.selectbox("Feedback ID", df["feedback_id"])
            if st.button("Delete"):
                execute_query("DELETE FROM feedback WHERE feedback_id=%s", (feedback_id,), "Deleted!")

def manage_users():
    st.subheader(" Manage Users")
    action = st.radio("Action", ["View", "Add", "Delete"])
    if action == "View":
        st.dataframe(fetch_table("users"))
    elif action == "Add":
        username = st.text_input("Username")
        password = st.text_input("Password")
        role = st.selectbox("Role", ["Admin","Staff"])
        if st.button("Add User"):
            query = """INSERT INTO users(username,password_hash,role,created_at)
                       VALUES(%s,%s,%s,%s)"""
            execute_query(query, (username,password,role,datetime.today()), "User added!")
    elif action == "Delete":
        df = fetch_table("users")
        if not df.empty:
            user_id = st.selectbox("User ID", df["user_id"])
            if st.button("Delete"):
                execute_query("DELETE FROM users WHERE user_id=%s", (user_id,), "Deleted!")




#  LAYOUT (Login page & sidebar)

st.set_page_config(page_title="E-Commerce CMS", layout="wide")
st.title("️ Customer Management System")
# Initialize session state
if "logged_in" not in st.session_state:
    st.session_state["logged_in"] = False

if not st.session_state["logged_in"]:
    login_page()
else:
    # Sidebar
    st.sidebar.title(f"Welcome, {st.session_state['username']}")
    st.sidebar.write(f"Role: {st.session_state['user_role']}")
    menu = ["Dashboard","Customers","Addresses","Products","Orders",
    "Order Items","Payments","Feedback","Users"]
    choice = st.sidebar.selectbox(" Navigation", menu)

    if choice == "Dashboard": show_dashboard()
    elif choice == "Customers": manage_customers()
    elif choice == "Addresses": manage_addresses()
    elif choice == "Products": manage_products()
    elif choice == "Orders": manage_orders()
    elif choice == "Order Items": manage_order_items()
    elif choice == "Payments": manage_payments()
    elif choice == "Feedback": manage_feedback()
    elif choice == "Users": manage_users()
    elif choice == "Logout":
        st.session_state["logged_in"] = False
        st.success("Logged out successfully!")
        st.rerun()


