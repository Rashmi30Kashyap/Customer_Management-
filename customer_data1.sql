CREATE DATABASE IF NOT EXISTS ecommerce_customer_db;
USE ecommerce_customer_db;
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS feedback;
DROP TABLE IF EXISTS addresses;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS users;customers
SET FOREIGN_KEY_CHECKS = 1;


CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    gender VARCHAR(10),
    dob DATE,
    join_date DATE,
    status VARCHAR(20) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (1, 'Rahul Chopra', 'rahul.chopra95@gmail.com', '9500957212', 'Male', '1989-09-15', '2020-04-08', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (2, 'Tanmay Nanda', 'tanmay.nanda39@gmail.com', '9336456621', 'Male', '1975-02-23', '2025-01-08', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (3, 'Mohit Patel', 'mohit.patel75@gmail.com', '7399012686', 'Male', '1996-08-07', '2024-03-24', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (4, 'Pooja Nair', 'pooja.nair62@gmail.com', '7201281557', 'Female', '1978-11-14', '2022-07-14', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (5, 'Vihaan Verma', 'vihaan.verma61@gmail.com', '9464323393', 'Male', '2000-02-08', '2021-04-18', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (6, 'Sara Joshi', 'sara.joshi69@gmail.com', '7180943908', 'Female', '1989-09-04', '2020-11-18', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (7, 'Siddharth Iyer', 'siddharth.iyer62@gmail.com', '8616854671', 'Male', '1981-07-02', '2021-07-01', 'Blacklisted');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (8, 'Mira Kapoor', 'mira.kapoor64@gmail.com', '9884374109', 'Female', '2000-09-22', '2025-08-05', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (9, 'Vivaan Malhotra', 'vivaan.malhotra79@gmail.com', '7903132646', 'Male', '1985-01-02', '2024-08-17', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (10, 'Vivaan Thakur', 'vivaan.thakur20@gmail.com', '7173574218', 'Male', '1994-02-22', '2021-07-04', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (11, 'Tanmay Bose', 'tanmay.bose15@gmail.com', '9188029013', 'Male', '1988-11-19', '2024-09-11', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (12, 'Mohit Kumar', 'mohit.kumar43@gmail.com', '8240529481', 'Male', '1996-11-10', '2023-06-25', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (13, 'Kunal Bose', 'kunal.bose82@gmail.com', '7178663096', 'Male', '1992-04-17', '2022-03-12', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (14, 'Ankit Kapoor', 'ankit.kapoor30@gmail.com', '8995226828', 'Male', '1992-12-10', '2024-11-17', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (15, 'Myra Reddy', 'myra.reddy43@gmail.com', '7214929002', 'Female', '1998-09-05', '2022-05-20', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (16, 'Ira Joshi', 'ira.joshi74@gmail.com', '8369639388', 'Female', '2003-01-03', '2025-07-27', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (17, 'Mohit Reddy', 'mohit.reddy91@gmail.com', '8273497327', 'Male', '1998-08-18', '2025-07-18', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (18, 'Arjun Nanda', 'arjun.nanda14@gmail.com', '8725464884', 'Male', '1992-03-14', '2021-01-10', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (19, 'Ankit Singh', 'ankit.singh97@gmail.com', '7816114302', 'Male', '1978-06-25', '2024-07-20', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (20, 'Rohan Iyer', 'rohan.iyer62@gmail.com', '7292587044', 'Male', '1998-06-26', '2023-11-28', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (21, 'Ritvik Iyer', 'ritvik.iyer99@gmail.com', '7510751046', 'Male', '2002-01-28', '2023-04-07', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (22, 'Neha Kapoor', 'neha.kapoor39@gmail.com', '7125409494', 'Female', '1996-04-13', '2022-05-28', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (23, 'Neha Thakur', 'neha.thakur61@gmail.com', '9675757257', 'Female', '1985-01-04', '2022-03-19', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (24, 'Diya Mehta', 'diya.mehta86@gmail.com', '8471178705', 'Female', '1998-06-14', '2024-09-04', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (25, 'Ritvik Verma', 'ritvik.verma65@gmail.com', '7658260221', 'Male', '2000-09-22', '2025-12-24', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (26, 'Sneha Patel', 'sneha.patel95@gmail.com', '8769108025', 'Female', '1985-11-28', '2020-12-10', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (27, 'Priya Chopra', 'priya.chopra99@gmail.com', '8695295870', 'Female', '1979-04-14', '2025-07-22', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (28, 'Yash Malhotra', 'yash.malhotra48@gmail.com', '8688343096', 'Male', '2001-01-10', '2022-04-14', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (29, 'Mira Agarwal', 'mira.agarwal66@gmail.com', '9329460134', 'Female', '1991-08-26', '2025-03-22', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (30, 'Aadhya Kumar', 'aadhya.kumar96@gmail.com', '8341206079', 'Female', '2000-04-05', '2020-01-08', 'Blacklisted');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (31, 'Kunal Desai', 'kunal.desai90@gmail.com', '9308773243', 'Male', '1997-12-13', '2023-07-08', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (32, 'Vihaan Desai', 'vihaan.desai38@gmail.com', '7963406382', 'Male', '1997-09-15', '2020-09-08', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (33, 'Kunal Reddy', 'kunal.reddy69@gmail.com', '9670298515', 'Male', '1992-10-11', '2023-10-27', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (34, 'Nikita Agarwal', 'nikita.agarwal30@gmail.com', '9609677794', 'Female', '1989-05-25', '2021-11-09', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (35, 'Pooja Joshi', 'pooja.joshi66@gmail.com', '7866162966', 'Female', '1984-04-09', '2022-06-18', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (36, 'Siddharth Chopra', 'siddharth.chopra98@gmail.com', '7858511779', 'Male', '1981-02-14', '2023-06-18', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (37, 'Karan Desai', 'karan.desai59@gmail.com', '9846812123', 'Male', '1975-10-13', '2023-01-12', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (38, 'Sneha Nanda', 'sneha.nanda79@gmail.com', '9336801619', 'Female', '1990-04-09', '2023-08-01', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (39, 'Sara Agarwal', 'sara.agarwal26@gmail.com', '9673510887', 'Female', '1975-07-19', '2024-11-01', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (40, 'Kiara Agarwal', 'kiara.agarwal33@gmail.com', '7379340713', 'Female', '1987-06-07', '2023-06-11', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (41, 'Sanya Desai', 'sanya.desai42@gmail.com', '7604988121', 'Female', '1975-12-18', '2020-06-08', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (42, 'Aarav Kumar', 'aarav.kumar35@gmail.com', '7767154083', 'Male', '1979-04-05', '2023-11-04', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (43, 'Kunal Joshi', 'kunal.joshi57@gmail.com', '7750572325', 'Male', '1994-12-23', '2020-03-10', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (44, 'Rahul Malhotra', 'rahul.malhotra96@gmail.com', '8525904456', 'Male', '1997-04-03', '2024-12-27', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (45, 'Rahul Bose', 'rahul.bose25@gmail.com', '9940348305', 'Male', '1976-06-18', '2023-11-12', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (46, 'Ananya Desai', 'ananya.desai72@gmail.com', '7565492204', 'Female', '1986-11-27', '2023-12-05', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (47, 'Megha Nanda', 'megha.nanda71@gmail.com', '8567694547', 'Female', '2001-12-19', '2022-06-28', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (48, 'Ritvik Agarwal', 'ritvik.agarwal41@gmail.com', '8711871397', 'Male', '1994-11-13', '2022-01-16', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (49, 'Vikram Singh', 'vikram.singh55@gmail.com', '8465436049', 'Male', '1983-10-23', '2022-09-01', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (50, 'Aditya Kumar', 'aditya.kumar62@gmail.com', '8696115913', 'Male', '1999-04-23', '2023-11-23', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (51, 'Aditya Kapoor', 'aditya.kapoor38@gmail.com', '8842800803', 'Male', '1982-05-22', '2024-06-16', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (52, 'Sneha Nanda', 'sneha.nanda52@gmail.com', '8854684750', 'Female', '1989-05-10', '2022-04-04', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (53, 'Myra Nanda', 'myra.nanda98@gmail.com', '7305665554', 'Female', '1981-12-16', '2022-12-19', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (54, 'Myra Singh', 'myra.singh47@gmail.com', '7487493096', 'Female', '1980-05-01', '2025-09-05', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (55, 'Nikhil Kapoor', 'nikhil.kapoor99@gmail.com', '7784907325', 'Male', '2002-08-04', '2020-10-10', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (56, 'Priya Iyer', 'priya.iyer16@gmail.com', '8612957813', 'Female', '1978-02-13', '2023-02-19', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (57, 'Arjun Reddy', 'arjun.reddy82@gmail.com', '8191462297', 'Male', '1982-02-18', '2023-10-20', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (58, 'Ishaan Chopra', 'ishaan.chopra67@gmail.com', '8419280490', 'Male', '2002-10-14', '2022-10-20', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (59, 'Karan Singh', 'karan.singh43@gmail.com', '9187174381', 'Male', '1980-04-06', '2024-02-06', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (60, 'Megha Nair', 'megha.nair47@gmail.com', '7348545713', 'Female', '1984-12-10', '2025-08-03', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (61, 'Asha Singh', 'asha.singh64@gmail.com', '7684719405', 'Female', '1982-11-05', '2022-03-03', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (62, 'Megha Malhotra', 'megha.malhotra46@gmail.com', '8233523720', 'Female', '1989-12-10', '2025-07-09', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (63, 'Mira Patel', 'mira.patel86@gmail.com', '7563887247', 'Female', '1998-06-20', '2022-01-03', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (64, 'Ritvik Malhotra', 'ritvik.malhotra15@gmail.com', '7605196410', 'Male', '1991-11-15', '2022-03-19', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (65, 'Aadhya Nair', 'aadhya.nair54@gmail.com', '8457887167', 'Female', '1985-11-04', '2021-06-14', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (66, 'Shreya Nanda', 'shreya.nanda14@gmail.com', '8194553481', 'Female', '1985-05-11', '2020-07-28', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (67, 'Nikhil Agarwal', 'nikhil.agarwal62@gmail.com', '7301415220', 'Male', '1991-06-20', '2023-11-15', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (68, 'Ritvik Nanda', 'ritvik.nanda26@gmail.com', '8570423569', 'Male', '2003-12-16', '2020-01-21', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (69, 'Rohan Kapoor', 'rohan.kapoor80@gmail.com', '7692975437', 'Male', '1988-02-08', '2020-08-04', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (70, 'Vikram Kapoor', 'vikram.kapoor75@gmail.com', '9393587744', 'Male', '1988-08-16', '2021-08-18', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (71, 'Yash Thakur', 'yash.thakur27@gmail.com', '7396618390', 'Male', '1999-07-11', '2024-05-27', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (72, 'Asha Malhotra', 'asha.malhotra94@gmail.com', '8259553112', 'Female', '1989-09-16', '2022-06-18', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (73, 'Mira Gupta', 'mira.gupta34@gmail.com', '9356415500', 'Female', '1993-07-08', '2023-01-11', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (74, 'Shreya Reddy', 'shreya.reddy73@gmail.com', '7235555899', 'Female', '1991-10-11', '2020-08-04', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (75, 'Ananya Reddy', 'ananya.reddy62@gmail.com', '9265744099', 'Female', '1977-08-26', '2022-06-20', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (76, 'Mohit Nanda', 'mohit.nanda58@gmail.com', '8773020489', 'Male', '1997-08-28', '2024-01-20', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (77, 'Pooja Patel', 'pooja.patel65@gmail.com', '7916440738', 'Female', '1995-12-28', '2020-08-06', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (78, 'Vivaan Gupta', 'vivaan.gupta17@gmail.com', '8484897084', 'Male', '1986-07-05', '2021-09-14', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (79, 'Rohan Iyer', 'rohan.iyer20@gmail.com', '9510753814', 'Male', '1994-11-08', '2023-10-05', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (80, 'Mira Joshi', 'mira.joshi95@gmail.com', '7963968184', 'Female', '1989-05-22', '2024-03-03', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (81, 'Asha Kapoor', 'asha.kapoor91@gmail.com', '8841218491', 'Female', '1983-08-28', '2022-04-13', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (82, 'Siddharth Chopra', 'siddharth.chopra83@gmail.com', '8717199615', 'Male', '1984-12-10', '2020-11-13', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (83, 'Yash Nair', 'yash.nair46@gmail.com', '7751831074', 'Male', '2000-06-08', '2025-04-20', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (84, 'Vihaan Verma', 'vihaan.verma49@gmail.com', '8135824891', 'Male', '1993-06-24', '2021-02-10', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (85, 'Sara Singh', 'sara.singh26@gmail.com', '9492836532', 'Female', '1991-09-09', '2021-05-27', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (86, 'Priya Mehta', 'priya.mehta69@gmail.com', '7251136695', 'Female', '1999-04-28', '2025-12-22', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (87, 'Aadhya Chopra', 'aadhya.chopra11@gmail.com', '8676140134', 'Female', '1978-08-12', '2025-12-22', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (88, 'Neha Mehta', 'neha.mehta96@gmail.com', '7606244434', 'Female', '1975-10-18', '2022-10-08', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (89, 'Riya Desai', 'riya.desai24@gmail.com', '7148690765', 'Female', '1976-05-16', '2020-02-08', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (90, 'Dev Agarwal', 'dev.agarwal57@gmail.com', '9897940629', 'Male', '1997-09-14', '2024-12-24', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (91, 'Myra Nair', 'myra.nair88@gmail.com', '8400368694', 'Female', '1976-12-12', '2021-08-15', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (92, 'Myra Bajaj', 'myra.bajaj79@gmail.com', '9485123110', 'Female', '1976-07-09', '2021-02-28', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (93, 'Karan Bose', 'karan.bose12@gmail.com', '7944814262', 'Male', '1985-04-05', '2024-04-03', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (94, 'Tanmay Singh', 'tanmay.singh39@gmail.com', '8931471931', 'Male', '1979-10-01', '2022-03-05', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (95, 'Vihaan Sharma', 'vihaan.sharma26@gmail.com', '7484659715', 'Male', '2000-04-19', '2022-01-06', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (96, 'Aman Thakur', 'aman.thakur24@gmail.com', '9168244921', 'Male', '1990-08-25', '2022-09-19', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (97, 'Yash Verma', 'yash.verma94@gmail.com', '9423873102', 'Male', '1989-11-01', '2020-08-28', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (98, 'Vikram Agarwal', 'vikram.agarwal19@gmail.com', '7445864933', 'Male', '1994-03-03', '2021-05-20', 'Active');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (99, 'Shreya Bose', 'shreya.bose77@gmail.com', '8587173220', 'Female', '1991-10-14', '2020-12-04', 'Inactive');
INSERT INTO customers (customer_id, full_name, email, phone, gender, dob, join_date, status) VALUES (100, 'Aman Agarwal', 'aman.agarwal39@gmail.com', '8463925049', 'Male', '2001-08-13', '2023-12-04', 'Active');

SELECT * FROM customers;


CREATE TABLE addresses (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    address_type VARCHAR(50),
    address_line1 VARCHAR(150),
    address_line2 VARCHAR(150),
    city VARCHAR(50),
    state VARCHAR(50),
    pincode VARCHAR(10),
    country VARCHAR(50) DEFAULT 'India',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (1, 1, 'Home', '66, Block A', 'Opposite Park', 'Lucknow', 'Uttar Pradesh', '807416', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (2, 2, 'Shipping', '24, Station Road', '', 'Bhopal', 'Madhya Pradesh', '180394', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (3, 3, 'Home', '190, Block A', 'Opposite Park', 'Chennai', 'Tamil Nadu', '890758', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (4, 4, 'Shipping', '245, Block A', '', 'Delhi', 'Delhi', '724953', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (5, 5, 'Shipping', '241, Near Temple', '', 'Kanpur', 'Uttar Pradesh', '807660', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (6, 6, 'Home', '91, Station Road', 'Near Police Station', 'Vadodara', 'Gujarat', '437626', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (7, 7, 'Billing', '169, Near Market', 'Opposite Park', 'Pune', 'Maharashtra', '272246', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (8, 8, 'Shipping', '143, Block A', '', 'Kanpur', 'Uttar Pradesh', '996438', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (9, 9, 'Home', '207, Near Temple', 'Near Police Station', 'Patna', 'Bihar', '347144', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (10, 10, 'Home', '165, MG Road', 'Near Police Station', 'Vadodara', 'Gujarat', '817764', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (11, 11, 'Shipping', '47, Sector 5', 'Near Bus Stop', 'Jaipur', 'Rajasthan', '140359', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (12, 12, 'Home', '47, 1st Main', 'Near Police Station', 'Kanpur', 'Uttar Pradesh', '116402', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (13, 13, 'Home', '37, MG Road', '', 'Nagpur', 'Maharashtra', '182965', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (14, 14, 'Shipping', '97, Near Temple', 'Behind Mall', 'Visakhapatnam', 'Andhra Pradesh', '335583', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (15, 15, 'Home', '80, Block A', 'Near Police Station', 'Hyderabad', 'Telangana', '498028', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (16, 16, 'Billing', '40, 1st Main', 'Near Police Station', 'Bengaluru', 'Karnataka', '165164', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (17, 17, 'Home', '114, Near Temple', 'Behind Mall', 'Bengaluru', 'Karnataka', '395320', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (18, 18, 'Billing', '70, 2nd Cross', 'Near Police Station', 'Thane', 'Maharashtra', '544303', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (19, 19, 'Shipping', '29, Sector 5', 'Near Police Station', 'Kanpur', 'Uttar Pradesh', '560797', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (20, 20, 'Shipping', '79, MG Road', 'Opposite Park', 'Visakhapatnam', 'Andhra Pradesh', '809539', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (21, 21, 'Billing', '2, 2nd Cross', 'Near Bus Stop', 'Vadodara', 'Gujarat', '167443', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (22, 22, 'Billing', '66, Sector 5', 'Near Bus Stop', 'Kolkata', 'West Bengal', '911280', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (23, 23, 'Billing', '192, Near Temple', 'Opposite Park', 'Mumbai', 'Maharashtra', '631546', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (24, 24, 'Home', '181, 2nd Cross', 'Near Police Station', 'Nagpur', 'Maharashtra', '668453', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (25, 25, 'Billing', '102, MG Road', 'Behind Mall', 'Kanpur', 'Uttar Pradesh', '185576', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (26, 26, 'Shipping', '221, Block A', 'Near Police Station', 'Thane', 'Maharashtra', '191644', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (27, 27, 'Billing', '182, Near Temple', 'Near Bus Stop', 'Patna', 'Bihar', '534068', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (28, 28, 'Home', '248, Block A', 'Opposite Park', 'Nagpur', 'Maharashtra', '131869', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (29, 29, 'Shipping', '177, Block A', '', 'Thane', 'Maharashtra', '982442', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (30, 30, 'Billing', '112, Near Temple', 'Near Police Station', 'Chennai', 'Tamil Nadu', '365135', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (31, 31, 'Shipping', '191, Block A', 'Opposite Park', 'Nagpur', 'Maharashtra', '435346', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (32, 32, 'Home', '131, Station Road', 'Near Police Station', 'Hyderabad', 'Telangana', '190089', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (33, 33, 'Billing', '90, Block A', 'Opposite Park', 'Pune', 'Maharashtra', '923934', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (34, 34, 'Home', '66, 2nd Cross', 'Opposite Park', 'Chennai', 'Tamil Nadu', '263557', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (35, 35, 'Home', '195, Station Road', 'Opposite Park', 'Kolkata', 'West Bengal', '907143', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (36, 36, 'Home', '194, Near Market', 'Near Police Station', 'Bhopal', 'Madhya Pradesh', '596490', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (37, 37, 'Shipping', '222, Block A', 'Opposite Park', 'Vadodara', 'Gujarat', '448908', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (38, 38, 'Home', '114, Sector 5', 'Near Bus Stop', 'Bengaluru', 'Karnataka', '601699', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (39, 39, 'Shipping', '130, Station Road', 'Near Bus Stop', 'Delhi', 'Delhi', '479038', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (40, 40, 'Billing', '15, Block A', 'Near Bus Stop', 'Thane', 'Maharashtra', '149434', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (41, 41, 'Home', '153, Near Temple', 'Behind Mall', 'Bengaluru', 'Karnataka', '754883', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (42, 42, 'Home', '190, MG Road', 'Behind Mall', 'Pimpri-Chinchwad', 'Maharashtra', '940281', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (43, 43, 'Billing', '155, Near Market', 'Near Police Station', 'Pune', 'Maharashtra', '447145', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (44, 44, 'Home', '27, Block A', '', 'Delhi', 'Delhi', '582407', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (45, 45, 'Home', '64, Near Market', 'Behind Mall', 'Hyderabad', 'Telangana', '151043', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (46, 46, 'Shipping', '41, Block A', 'Near Bus Stop', 'Visakhapatnam', 'Andhra Pradesh', '749427', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (47, 47, 'Billing', '199, Block A', 'Near Police Station', 'Nagpur', 'Maharashtra', '538625', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (48, 48, 'Home', '85, Station Road', 'Near Police Station', 'Lucknow', 'Uttar Pradesh', '179113', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (49, 49, 'Billing', '65, 1st Main', 'Near Bus Stop', 'Nagpur', 'Maharashtra', '407949', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (50, 50, 'Home', '37, Block A', 'Near Bus Stop', 'Patna', 'Bihar', '805847', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (51, 51, 'Home', '153, Station Road', 'Near Bus Stop', 'Nagpur', 'Maharashtra', '245215', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (52, 52, 'Home', '203, Block A', 'Opposite Park', 'Nagpur', 'Maharashtra', '784751', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (53, 53, 'Shipping', '166, Near Temple', 'Near Police Station', 'Visakhapatnam', 'Andhra Pradesh', '207992', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (54, 54, 'Shipping', '80, 1st Main', 'Opposite Park', 'Mumbai', 'Maharashtra', '490211', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (55, 55, 'Billing', '58, 1st Main', 'Opposite Park', 'Bhopal', 'Madhya Pradesh', '311332', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (56, 56, 'Home', '202, Station Road', 'Near Police Station', 'Surat', 'Gujarat', '995447', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (57, 57, 'Billing', '170, Block A', 'Near Police Station', 'Visakhapatnam', 'Andhra Pradesh', '149581', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (58, 58, 'Home', '40, 1st Main', 'Opposite Park', 'Vadodara', 'Gujarat', '505019', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (59, 59, 'Billing', '232, 1st Main', 'Behind Mall', 'Vadodara', 'Gujarat', '958343', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (60, 60, 'Home', '174, 2nd Cross', 'Behind Mall', 'Indore', 'Madhya Pradesh', '491995', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (61, 61, 'Home', '192, Near Market', 'Opposite Park', 'Surat', 'Gujarat', '898939', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (62, 62, 'Shipping', '248, Near Market', 'Opposite Park', 'Ahmedabad', 'Gujarat', '434500', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (63, 63, 'Home', '119, Sector 5', 'Behind Mall', 'Patna', 'Bihar', '571999', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (64, 64, 'Home', '248, 1st Main', 'Opposite Park', 'Visakhapatnam', 'Andhra Pradesh', '548997', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (65, 65, 'Home', '14, Near Market', 'Near Bus Stop', 'Kolkata', 'West Bengal', '372147', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (66, 66, 'Billing', '217, Station Road', 'Near Bus Stop', 'Chennai', 'Tamil Nadu', '855957', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (67, 67, 'Billing', '116, 1st Main', 'Behind Mall', 'Hyderabad', 'Telangana', '396042', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (68, 68, 'Shipping', '116, Block A', '', 'Ahmedabad', 'Gujarat', '966375', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (69, 69, 'Shipping', '129, Block A', 'Opposite Park', 'Delhi', 'Delhi', '525712', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (70, 70, 'Billing', '58, MG Road', 'Near Bus Stop', 'Bengaluru', 'Karnataka', '503124', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (71, 71, 'Shipping', '38, 1st Main', '', 'Lucknow', 'Uttar Pradesh', '939822', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (72, 72, 'Shipping', '213, 1st Main', 'Behind Mall', 'Bhopal', 'Madhya Pradesh', '839884', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (73, 73, 'Shipping', '232, Station Road', '', 'Vadodara', 'Gujarat', '115506', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (74, 74, 'Shipping', '39, Near Temple', '', 'Pune', 'Maharashtra', '985522', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (75, 75, 'Shipping', '32, MG Road', 'Opposite Park', 'Ahmedabad', 'Gujarat', '425779', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (76, 76, 'Home', '17, Station Road', 'Behind Mall', 'Vadodara', 'Gujarat', '589318', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (77, 77, 'Shipping', '162, 2nd Cross', 'Opposite Park', 'Pimpri-Chinchwad', 'Maharashtra', '127233', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (78, 78, 'Home', '158, Block A', 'Opposite Park', 'Indore', 'Madhya Pradesh', '111640', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (79, 79, 'Shipping', '171, Station Road', 'Near Police Station', 'Indore', 'Madhya Pradesh', '306412', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (80, 80, 'Shipping', '140, MG Road', 'Behind Mall', 'Bengaluru', 'Karnataka', '661613', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (81, 81, 'Home', '100, Block A', 'Near Bus Stop', 'Delhi', 'Delhi', '776549', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (82, 82, 'Billing', '202, Station Road', 'Near Bus Stop', 'Mumbai', 'Maharashtra', '484440', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (83, 83, 'Billing', '149, Block A', 'Opposite Park', 'Chennai', 'Tamil Nadu', '918977', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (84, 84, 'Home', '87, 1st Main', 'Behind Mall', 'Kanpur', 'Uttar Pradesh', '682536', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (85, 85, 'Home', '47, 1st Main', '', 'Bhopal', 'Madhya Pradesh', '772423', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (86, 86, 'Billing', '76, 2nd Cross', '', 'Thane', 'Maharashtra', '148780', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (87, 87, 'Shipping', '239, Sector 5', 'Near Police Station', 'Delhi', 'Delhi', '440926', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (88, 88, 'Shipping', '65, MG Road', 'Opposite Park', 'Pimpri-Chinchwad', 'Maharashtra', '606395', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (89, 89, 'Billing', '13, Block A', 'Near Bus Stop', 'Kanpur', 'Uttar Pradesh', '928771', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (90, 90, 'Shipping', '228, Near Temple', 'Behind Mall', 'Kanpur', 'Uttar Pradesh', '568176', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (91, 91, 'Home', '128, Near Market', 'Near Bus Stop', 'Lucknow', 'Uttar Pradesh', '305892', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (92, 92, 'Shipping', '22, Near Temple', '', 'Jaipur', 'Rajasthan', '950064', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (93, 93, 'Billing', '47, Sector 5', 'Near Bus Stop', 'Vadodara', 'Gujarat', '972287', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (94, 94, 'Shipping', '170, Sector 5', 'Near Bus Stop', 'Bengaluru', 'Karnataka', '453848', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (95, 95, 'Shipping', '110, 1st Main', 'Behind Mall', 'Vadodara', 'Gujarat', '862524', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (96, 96, 'Shipping', '187, Block A', 'Near Police Station', 'Thane', 'Maharashtra', '154412', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (97, 97, 'Home', '203, MG Road', '', 'Jaipur', 'Rajasthan', '780532', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (98, 98, 'Billing', '132, 1st Main', '', 'Nagpur', 'Maharashtra', '490959', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (99, 99, 'Billing', '201, Near Market', '', 'Vadodara', 'Gujarat', '821027', 'India');
INSERT INTO addresses (address_id, customer_id, address_type, address_line1, address_line2, city, state, pincode, country) VALUES (100, 100, 'Shipping', '200, Block A', 'Near Bus Stop', 'Bengaluru', 'Karnataka', '357459', 'India');
SELECT * FROM addresses;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(200) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT,
    description TEXT,
    added_date DATE,
    status VARCHAR(20) DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert products
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (1, 'Screen Protector Pro', 'Accessories', 1763.41, 78, 'Screen Protector Pro in Accessories category. Good quality product.', '2024-08-12', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (2, 'Smartphone Classic', 'Grocery', 38188.76, 293, 'Smartphone Classic in Grocery category. Good quality product.', '2020-09-12', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (3, 'Leather Wallet Mini', 'Toys', 32529.6, 127, 'Leather Wallet Mini in Toys category. Good quality product.', '2019-01-24', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (4, 'LED TV 43 inch Pro', 'Grocery', 25958.6, 467, 'LED TV 43 inch Pro in Grocery category. Good quality product.', '2023-02-09', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (5, 'Gaming Mouse Pack', 'Grocery', 10845.34, 313, 'Gaming Mouse Pack in Grocery category. Good quality product.', '2021-12-16', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (6, 'Women''s Kurta Series', 'Clothing', 6915.06, 37, 'Women''s Kurta Series in Clothing category. Good quality product.', '2022-03-23', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (7, 'Novel Book Standard', 'Clothing', 40553.08, 495, 'Novel Book Standard in Clothing category. Good quality product.', '2025-06-22', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (8, 'Smartphone Pro', 'Clothing', 27566.36, 148, 'Smartphone Pro in Clothing category. Good quality product.', '2021-03-23', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (9, 'Wrist Watch Mini', 'Home & Kitchen', 39714.76, 260, 'Wrist Watch Mini in Home & Kitchen category. Good quality product.', '2020-02-07', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (10, 'Floor Mat Series', 'Beauty', 39549.1, 13, 'Floor Mat Series in Beauty category. Good quality product.', '2021-09-19', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (11, 'Smartphone Pack', 'Grocery', 40211.54, 282, 'Smartphone Pack in Grocery category. Good quality product.', '2020-10-03', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (12, 'Backpack Pack', 'Sports', 19997.28, 367, 'Backpack Pack in Sports category. Good quality product.', '2024-08-17', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (13, 'Board Game Mini', 'Books', 41192.47, 37, 'Board Game Mini in Books category. Good quality product.', '2020-06-21', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (14, 'Organic Honey Series', 'Grocery', 23370.79, 264, 'Organic Honey Series in Grocery category. Good quality product.', '2021-03-27', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (15, 'Action Camera Standard', 'Accessories', 9219.86, 494, 'Action Camera Standard in Accessories category. Good quality product.', '2020-07-17', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (16, 'Smart Bulb Plus', 'Clothing', 25976.39, 155, 'Smart Bulb Plus in Clothing category. Good quality product.', '2020-03-11', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (17, 'Keyboard Combo', 'Beauty', 17398.25, 481, 'Keyboard Combo in Beauty category. Good quality product.', '2023-05-28', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (18, 'Face Cream Classic', 'Sports', 9934.65, 489, 'Face Cream Classic in Sports category. Good quality product.', '2023-05-05', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (19, 'Bluetooth Speaker Mini', 'Sports', 30778.25, 47, 'Bluetooth Speaker Mini in Sports category. Good quality product.', '2023-11-06', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (20, 'Smart Bulb Edition', 'Accessories', 7835.58, 337, 'Smart Bulb Edition in Accessories category. Good quality product.', '2023-12-20', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (21, 'Coffee Maker Pro', 'Accessories', 2202.54, 442, 'Coffee Maker Pro in Accessories category. Good quality product.', '2019-02-02', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (22, 'Sneakers Pro', 'Accessories', 13342.1, 107, 'Sneakers Pro in Accessories category. Good quality product.', '2025-10-14', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (23, 'Shampoo 200ml Edition', 'Electronics', 24976.2, 321, 'Shampoo 200ml Edition in Electronics category. Good quality product.', '2023-05-21', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (24, 'HDMI Cable Classic', 'Grocery', 12356.16, 413, 'HDMI Cable Classic in Grocery category. Good quality product.', '2024-07-10', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (25, 'Bath Towels Standard', 'Clothing', 34476.39, 80, 'Bath Towels Standard in Clothing category. Good quality product.', '2022-07-16', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (26, 'DSLR Camera Set', 'Beauty', 17107.6, 73, 'DSLR Camera Set in Beauty category. Good quality product.', '2021-12-11', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (27, 'Microwave Oven Pro', 'Toys', 48771.4, 66, 'Microwave Oven Pro in Toys category. Good quality product.', '2025-06-17', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (28, 'Blender Mixer Classic', 'Clothing', 16056.93, 238, 'Blender Mixer Classic in Clothing category. Good quality product.', '2019-05-15', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (29, 'Screen Protector Series', 'Home & Kitchen', 4975.06, 148, 'Screen Protector Series in Home & Kitchen category. Good quality product.', '2022-10-14', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (30, 'Jeans Series', 'Home & Kitchen', 40700.87, 478, 'Jeans Series in Home & Kitchen category. Good quality product.', '2023-12-11', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (31, 'Backpack Pro', 'Home & Kitchen', 24987.54, 263, 'Backpack Pro in Home & Kitchen category. Good quality product.', '2022-08-10', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (32, 'Fitness Band Mini', 'Electronics', 4637.95, 201, 'Fitness Band Mini in Electronics category. Good quality product.', '2023-08-08', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (33, 'Router Classic', 'Accessories', 17740.82, 25, 'Router Classic in Accessories category. Good quality product.', '2021-08-20', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (34, 'Women''s Kurta Mini', 'Grocery', 14393.56, 4, 'Women''s Kurta Mini in Grocery category. Good quality product.', '2025-02-14', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (35, 'Coffee Maker Combo', 'Sports', 36415.28, 391, 'Coffee Maker Combo in Sports category. Good quality product.', '2022-06-02', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (36, 'Action Camera Set', 'Electronics', 28577.54, 99, 'Action Camera Set in Electronics category. Good quality product.', '2021-09-10', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (37, 'Screen Protector Edition', 'Books', 25286.14, 391, 'Screen Protector Edition in Books category. Good quality product.', '2023-05-27', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (38, 'Running Shoes Edition', 'Accessories', 6071.73, 499, 'Running Shoes Edition in Accessories category. Good quality product.', '2019-07-12', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (39, 'Shampoo 200ml Mini', 'Footwear', 46955.59, 386, 'Shampoo 200ml Mini in Footwear category. Good quality product.', '2020-04-20', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (40, 'Power Bank Classic', 'Books', 25077.88, 23, 'Power Bank Classic in Books category. Good quality product.', '2019-03-23', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (41, 'Keyboard Pro', 'Grocery', 26037.74, 76, 'Keyboard Pro in Grocery category. Good quality product.', '2023-09-05', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (42, 'HDMI Cable Plus', 'Accessories', 16027.72, 201, 'HDMI Cable Plus in Accessories category. Good quality product.', '2023-12-27', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (43, 'Microwave Oven Mini', 'Accessories', 16917.22, 424, 'Microwave Oven Mini in Accessories category. Good quality product.', '2023-09-16', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (44, 'Running Shoes Set', 'Accessories', 15093.56, 417, 'Running Shoes Set in Accessories category. Good quality product.', '2019-06-11', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (45, 'Sneakers Classic', 'Clothing', 48996.92, 298, 'Sneakers Classic in Clothing category. Good quality product.', '2021-12-28', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (46, 'Screen Protector Pack', 'Electronics', 29904.94, 135, 'Screen Protector Pack in Electronics category. Good quality product.', '2024-10-19', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (47, 'Sunglasses Edition', 'Electronics', 29237.64, 87, 'Sunglasses Edition in Electronics category. Good quality product.', '2023-11-24', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (48, 'Router Standard', 'Books', 7515.62, 348, 'Router Standard in Books category. Good quality product.', '2020-01-19', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (49, 'Sunglasses Standard', 'Clothing', 9659.6, 225, 'Sunglasses Standard in Clothing category. Good quality product.', '2021-07-05', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (50, 'Bath Towels Edition', 'Beauty', 20606.31, 396, 'Bath Towels Edition in Beauty category. Good quality product.', '2023-08-28', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (51, 'Kids Toy Set Classic', 'Electronics', 35331.9, 265, 'Kids Toy Set Classic in Electronics category. Good quality product.', '2020-09-11', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (52, 'Men''s T-Shirt Mini', 'Grocery', 26344.04, 160, 'Men''s T-Shirt Mini in Grocery category. Good quality product.', '2020-08-18', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (53, 'Air Fryer Edition', 'Footwear', 17810.21, 395, 'Air Fryer Edition in Footwear category. Good quality product.', '2025-12-22', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (54, 'Wrist Watch Set', 'Sports', 30561.32, 98, 'Wrist Watch Set in Sports category. Good quality product.', '2020-05-18', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (55, 'Kids Toy Set Set', 'Beauty', 47082.05, 152, 'Kids Toy Set Set in Beauty category. Good quality product.', '2025-05-23', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (56, 'Bluetooth Speaker Classic', 'Grocery', 15953.48, 178, 'Bluetooth Speaker Classic in Grocery category. Good quality product.', '2023-12-09', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (57, 'LED TV 43 inch Mini', 'Clothing', 28736.82, 278, 'LED TV 43 inch Mini in Clothing category. Good quality product.', '2022-07-27', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (58, 'Tripod Stand Pack', 'Home & Kitchen', 14628.06, 147, 'Tripod Stand Pack in Home & Kitchen category. Good quality product.', '2024-02-12', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (59, 'Microwave Oven Classic', 'Sports', 37403.82, 109, 'Microwave Oven Classic in Sports category. Good quality product.', '2020-09-09', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (60, 'Tripod Stand Series', 'Sports', 6992.06, 315, 'Tripod Stand Series in Sports category. Good quality product.', '2024-10-08', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (61, 'Novel Book Series', 'Electronics', 33540.22, 271, 'Novel Book Series in Electronics category. Good quality product.', '2020-11-08', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (62, 'Kids Toy Set Edition', 'Clothing', 20752.07, 367, 'Kids Toy Set Edition in Clothing category. Good quality product.', '2022-02-22', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (63, 'Sunglasses Plus', 'Electronics', 48230.26, 500, 'Sunglasses Plus in Electronics category. Good quality product.', '2020-07-21', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (64, 'Floor Mat Set', 'Grocery', 32578.35, 387, 'Floor Mat Set in Grocery category. Good quality product.', '2021-06-10', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (65, 'Women''s Kurta Standard', 'Electronics', 45409.66, 45, 'Women''s Kurta Standard in Electronics category. Good quality product.', '2024-10-08', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (66, 'Non-stick Pan Plus', 'Electronics', 45673.5, 89, 'Non-stick Pan Plus in Electronics category. Good quality product.', '2022-03-02', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (67, 'Screen Protector Plus', 'Grocery', 9436.63, 383, 'Screen Protector Plus in Grocery category. Good quality product.', '2025-05-02', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (68, 'Earphones Combo', 'Sports', 28461.9, 54, 'Earphones Combo in Sports category. Good quality product.', '2021-05-15', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (69, 'HDMI Cable Pro', 'Footwear', 26286.28, 455, 'HDMI Cable Pro in Footwear category. Good quality product.', '2020-09-15', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (70, 'Sneakers Combo', 'Beauty', 40468.37, 169, 'Sneakers Combo in Beauty category. Good quality product.', '2020-12-15', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (71, 'HDMI Cable Set', 'Sports', 35971.12, 7, 'HDMI Cable Set in Sports category. Good quality product.', '2024-06-26', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (72, 'Pressure Cooker Classic', 'Accessories', 33767.9, 98, 'Pressure Cooker Classic in Accessories category. Good quality product.', '2020-10-28', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (73, 'Blender Mixer Standard', 'Books', 41374.44, 263, 'Blender Mixer Standard in Books category. Good quality product.', '2021-02-13', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (74, 'Gaming Mouse Pro', 'Clothing', 9360.34, 71, 'Gaming Mouse Pro in Clothing category. Good quality product.', '2022-06-08', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (75, 'Smart Bulb Classic', 'Sports', 19270.18, 228, 'Smart Bulb Classic in Sports category. Good quality product.', '2025-05-11', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (76, 'Router Edition', 'Accessories', 36184.69, 5, 'Router Edition in Accessories category. Good quality product.', '2021-11-12', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (77, 'Non-stick Pan Classic', 'Beauty', 3245.9, 60, 'Non-stick Pan Classic in Beauty category. Good quality product.', '2022-05-06', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (78, 'Novel Book Plus', 'Footwear', 46165.83, 454, 'Novel Book Plus in Footwear category. Good quality product.', '2024-05-23', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (79, 'Protein Powder Standard', 'Sports', 18471.06, 113, 'Protein Powder Standard in Sports category. Good quality product.', '2020-03-16', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (80, 'DSLR Camera Classic', 'Grocery', 37423.58, 310, 'DSLR Camera Classic in Grocery category. Good quality product.', '2021-07-23', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (81, 'Floor Mat Plus', 'Grocery', 37902.92, 410, 'Floor Mat Plus in Grocery category. Good quality product.', '2024-04-25', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (82, 'Floor Mat Pro', 'Accessories', 43674.78, 41, 'Floor Mat Pro in Accessories category. Good quality product.', '2023-08-17', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (83, 'Screen Protector Classic', 'Toys', 4042.42, 288, 'Screen Protector Classic in Toys category. Good quality product.', '2019-01-27', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (84, 'HDMI Cable Mini', 'Footwear', 10226.52, 274, 'HDMI Cable Mini in Footwear category. Good quality product.', '2020-03-11', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (85, 'Bluetooth Speaker Edition', 'Grocery', 5943.57, 105, 'Bluetooth Speaker Edition in Grocery category. Good quality product.', '2024-10-16', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (86, 'Microwave Oven Pack', 'Footwear', 22356.31, 28, 'Microwave Oven Pack in Footwear category. Good quality product.', '2022-03-17', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (87, 'Wireless Earbuds Series', 'Grocery', 28259.97, 286, 'Wireless Earbuds Series in Grocery category. Good quality product.', '2022-11-26', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (88, 'Hair Dryer Set', 'Electronics', 19887.04, 418, 'Hair Dryer Set in Electronics category. Good quality product.', '2019-12-07', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (89, 'Jeans Classic', 'Clothing', 2406.7, 176, 'Jeans Classic in Clothing category. Good quality product.', '2024-02-18', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (90, 'Leather Wallet Standard', 'Clothing', 49307.94, 241, 'Leather Wallet Standard in Clothing category. Good quality product.', '2019-05-14', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (91, 'Leather Wallet Series', 'Home & Kitchen', 38325.51, 500, 'Leather Wallet Series in Home & Kitchen category. Good quality product.', '2024-11-14', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (92, 'Women''s Kurta Pro', 'Books', 22508.58, 469, 'Women''s Kurta Pro in Books category. Good quality product.', '2022-07-03', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (93, 'Bed Sheet Set Pro', 'Footwear', 6778.54, 440, 'Bed Sheet Set Pro in Footwear category. Good quality product.', '2021-02-06', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (94, 'Smart Bulb Pack', 'Books', 26511.8, 372, 'Smart Bulb Pack in Books category. Good quality product.', '2020-01-25', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (95, 'Router Plus', 'Sports', 23229.74, 368, 'Router Plus in Sports category. Good quality product.', '2023-07-18', 'Out of Stock');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (96, 'LED TV 43 inch Set', 'Beauty', 12487.48, 177, 'LED TV 43 inch Set in Beauty category. Good quality product.', '2020-05-07', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (97, 'Blender Mixer Plus', 'Clothing', 1755.03, 338, 'Blender Mixer Plus in Clothing category. Good quality product.', '2022-10-25', 'Available');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (98, 'Water Bottle Pack', 'Beauty', 10422.17, 51, 'Water Bottle Pack in Beauty category. Good quality product.', '2023-01-15', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (99, 'HDMI Cable Combo', 'Electronics', 12349.0, 22, 'HDMI Cable Combo in Electronics category. Good quality product.', '2022-08-08', 'Discontinued');
INSERT INTO products (product_id, product_name, category, price, stock_quantity, description, added_date, status) VALUES (100, 'Wrist Watch Pack', 'Beauty', 37755.13, 397, 'Wrist Watch Pack in Beauty category. Good quality product.', '2019-03-17', 'Out of Stock');
SELECT * FROM products;

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE,
    shipping_address_id INT,
    total_amount DECIMAL(12,2),
    payment_status VARCHAR(20) DEFAULT 'Pending',
    delivery_status VARCHAR(20) DEFAULT 'Processing',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (shipping_address_id) REFERENCES addresses(address_id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert orders
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (1, 30, '2025-06-19', 30, 37755.13, 'Refunded', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (2, 31, '2023-03-22', 31, 151508.4, 'Refunded', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (3, 53, '2023-05-02', 53, 51952.78, 'Refunded', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (4, 81, '2024-09-16', 81, 20844.34, 'Paid', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (5, 83, '2024-09-11', 83, 0.0, 'Refunded', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (6, 53, '2022-05-13', 53, 164769.88, 'Paid', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (7, 31, '2022-05-28', 31, 135900.64, 'Refunded', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (8, 60, '2021-09-14', 60, 57155.08, 'Pending', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (9, 50, '2022-05-07', 50, 247454.62, 'Pending', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (10, 58, '2023-02-18', 58, 0.0, 'Refunded', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (11, 7, '2023-07-22', 7, 0.0, 'Refunded', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (12, 10, '2022-10-24', 10, 0.0, 'Refunded', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (13, 62, '2022-06-10', 62, 0.0, 'Paid', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (14, 25, '2021-12-25', 25, 124572.7, 'Pending', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (15, 90, '2025-12-07', 90, 99950.16, 'Pending', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (16, 71, '2023-05-13', 71, 94164.1, 'Pending', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (17, 40, '2023-06-17', 40, 72369.38, 'Pending', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (18, 13, '2024-06-07', 13, 22689.0, 'Pending', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (19, 53, '2021-10-28', 53, 67525.74, 'Paid', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (20, 3, '2023-09-19', 3, 0.0, 'Refunded', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (21, 38, '2022-04-11', 38, 0.0, 'Paid', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (22, 73, '2022-08-18', 73, 352078.22, 'Refunded', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (23, 33, '2024-12-21', 33, 0.0, 'Refunded', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (24, 59, '2022-12-26', 59, 0.0, 'Pending', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (25, 18, '2025-08-06', 18, 49949.92, 'Refunded', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (26, 68, '2021-02-27', 68, 0.0, 'Refunded', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (27, 98, '2021-07-05', 98, 253980.5, 'Refunded', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (28, 9, '2022-01-07', 9, 134913.45, 'Refunded', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (29, 48, '2021-10-21', 48, 78858.84, 'Refunded', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (30, 85, '2024-01-01', 85, 0.0, 'Refunded', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (31, 2, '2021-09-24', 2, 130313.4, 'Pending', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (32, 3, '2025-12-22', 3, 41688.68, 'Pending', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (33, 14, '2021-09-05', 14, 120634.62, 'Paid', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (34, 80, '2025-05-27', 80, 48996.92, 'Pending', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (35, 51, '2021-06-13', 51, 0.0, 'Pending', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (36, 90, '2022-05-22', 90, 59991.84, 'Paid', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (37, 12, '2024-07-13', 12, 75467.8, 'Refunded', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (38, 8, '2021-12-06', 8, 64659.46, 'Paid', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (39, 56, '2023-10-28', 56, 83119.96, 'Paid', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (40, 30, '2022-12-19', 30, 0.0, 'Pending', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (41, 6, '2021-11-09', 6, 142733.3, 'Refunded', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (42, 23, '2023-01-07', 23, 114976.53, 'Refunded', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (43, 97, '2024-02-10', 97, 0.0, 'Paid', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (44, 73, '2024-11-18', 73, 0.0, 'Pending', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (45, 97, '2022-12-24', 97, 220104.99, 'Paid', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (46, 7, '2021-07-08', 7, 0.0, 'Paid', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (47, 78, '2025-10-13', 78, 0.0, 'Pending', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (48, 82, '2023-08-16', 82, 0.0, 'Paid', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (49, 71, '2024-07-06', 71, 14628.06, 'Refunded', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (50, 11, '2025-05-26', 11, 188836.78, 'Paid', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (51, 11, '2023-03-13', 11, 0.0, 'Refunded', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (52, 95, '2024-06-12', 95, 137020.5, 'Paid', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (53, 1, '2023-08-12', 1, 73884.24, 'Pending', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (54, 17, '2021-03-14', 17, 0.0, 'Pending', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (55, 14, '2021-02-12', 14, 44441.72, 'Refunded', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (56, 77, '2025-06-28', 77, 0.0, 'Pending', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (57, 38, '2024-07-25', 38, 187350.44, 'Paid', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (58, 74, '2025-03-22', 74, 0.0, 'Pending', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (59, 18, '2023-05-09', 18, 0.0, 'Pending', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (60, 9, '2022-07-09', 9, 0.0, 'Pending', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (61, 62, '2021-06-09', 62, 0.0, 'Paid', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (62, 77, '2025-04-15', 77, 79098.2, 'Paid', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (63, 39, '2021-07-11', 39, 268992.71, 'Refunded', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (64, 43, '2024-06-14', 43, 109245.84, 'Refunded', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (65, 39, '2023-10-23', 39, 0.0, 'Paid', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (66, 41, '2022-07-11', 41, 28259.97, 'Pending', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (67, 74, '2022-06-13', 74, 310377.31, 'Pending', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (68, 47, '2021-10-07', 47, 114566.28, 'Refunded', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (69, 88, '2025-01-24', 88, 0.0, 'Pending', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (70, 57, '2023-12-03', 57, 65982.75, 'Pending', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (71, 18, '2023-04-09', 18, 61903.0, 'Refunded', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (72, 92, '2024-07-03', 92, 0.0, 'Pending', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (73, 75, '2024-09-17', 75, 141633.88, 'Refunded', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (74, 70, '2021-06-23', 70, 114650.83, 'Refunded', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (75, 14, '2022-11-22', 14, 0.0, 'Pending', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (76, 83, '2025-01-19', 83, 106047.2, 'Refunded', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (77, 97, '2023-07-04', 97, 52572.56, 'Paid', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (78, 34, '2022-09-24', 34, 0.0, 'Refunded', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (79, 58, '2023-07-15', 58, 19869.3, 'Refunded', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (80, 45, '2021-08-04', 45, 0.0, 'Pending', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (81, 11, '2021-12-05', 11, 264800.18, 'Pending', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (82, 44, '2024-04-17', 44, 15594.9, 'Pending', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (83, 61, '2021-08-24', 61, 136943.02, 'Refunded', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (84, 41, '2021-05-02', 41, 224224.58, 'Refunded', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (85, 3, '2023-11-04', 3, 93911.18, 'Refunded', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (86, 95, '2022-09-06', 95, 20453.04, 'Refunded', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (87, 43, '2025-07-15', 43, 0.0, 'Paid', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (88, 81, '2022-03-21', 81, 192921.04, 'Refunded', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (89, 51, '2021-12-20', 51, 275047.08, 'Paid', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (90, 76, '2024-07-01', 76, 34796.5, 'Refunded', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (91, 27, '2023-12-26', 27, 156139.75, 'Paid', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (92, 69, '2022-06-11', 69, 0.0, 'Paid', 'Cancelled');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (93, 15, '2023-11-28', 15, 237113.37, 'Pending', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (94, 77, '2024-10-13', 77, 112211.46, 'Refunded', 'Processing');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (95, 45, '2023-08-20', 45, 0.0, 'Paid', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (96, 79, '2025-02-22', 79, 0.0, 'Paid', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (97, 16, '2022-05-04', 16, 0.0, 'Paid', 'Delivered');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (98, 89, '2022-09-13', 89, 27114.16, 'Pending', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (99, 74, '2024-07-06', 74, 0.0, 'Pending', 'Shipped');
INSERT INTO orders (order_id, customer_id, order_date, shipping_address_id, total_amount, payment_status, delivery_status) VALUES (100, 72, '2022-08-10', 72, 127321.87, 'Paid', 'Shipped');

SELECT * FROM orders;

CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price_each DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert order_items
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (1, 41, 58, 5, 14628.06);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (2, 7, 46, 1, 29904.94);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (3, 63, 18, 2, 9934.65);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (4, 50, 72, 5, 33767.9);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (5, 84, 64, 4, 32578.35);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (6, 88, 63, 4, 48230.26);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (7, 91, 57, 4, 28736.82);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (8, 22, 11, 5, 40211.54);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (9, 4, 98, 2, 10422.17);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (10, 38, 5, 3, 10845.34);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (11, 29, 69, 3, 26286.28);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (12, 22, 100, 4, 37755.13);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (13, 73, 96, 4, 12487.48);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (14, 71, 66, 1, 45673.5);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (15, 74, 15, 3, 9219.86);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (16, 100, 70, 3, 40468.37);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (17, 70, 97, 1, 1755.03);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (18, 98, 93, 4, 6778.54);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (19, 70, 28, 4, 16056.93);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (20, 14, 95, 2, 23229.74);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (21, 39, 5, 4, 10845.34);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (22, 34, 45, 1, 48996.92);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (23, 57, 16, 2, 25976.39);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (24, 27, 95, 5, 23229.74);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (25, 89, 45, 5, 48996.92);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (26, 81, 55, 2, 47082.05);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (27, 79, 18, 2, 9934.65);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (28, 27, 8, 5, 27566.36);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (29, 45, 69, 3, 26286.28);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (30, 77, 69, 2, 26286.28);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (31, 42, 91, 3, 38325.51);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (32, 38, 74, 3, 9360.34);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (33, 66, 87, 1, 28259.97);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (34, 18, 97, 4, 1755.03);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (35, 8, 36, 2, 28577.54);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (36, 90, 17, 2, 17398.25);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (37, 19, 92, 3, 22508.58);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (38, 32, 98, 4, 10422.17);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (39, 63, 19, 5, 30778.25);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (40, 81, 35, 4, 36415.28);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (41, 49, 58, 1, 14628.06);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (42, 82, 99, 1, 12349.0);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (43, 52, 66, 3, 45673.5);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (44, 89, 48, 4, 7515.62);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (45, 63, 42, 5, 16027.72);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (46, 1, 100, 1, 37755.13);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (47, 94, 59, 3, 37403.82);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (48, 9, 69, 4, 26286.28);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (49, 28, 55, 2, 47082.05);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (50, 64, 35, 3, 36415.28);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (51, 37, 44, 5, 15093.56);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (52, 74, 17, 5, 17398.25);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (53, 63, 44, 1, 15093.56);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (54, 6, 13, 4, 41192.47);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (55, 3, 16, 2, 25976.39);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (56, 57, 59, 1, 37403.82);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (57, 55, 26, 2, 17107.6);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (58, 84, 39, 2, 46955.59);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (59, 36, 12, 3, 19997.28);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (60, 33, 11, 3, 40211.54);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (61, 86, 84, 2, 10226.52);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (62, 7, 51, 3, 35331.9);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (63, 93, 90, 2, 49307.94);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (64, 55, 84, 1, 10226.52);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (65, 91, 13, 1, 41192.47);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (66, 28, 62, 1, 20752.07);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (67, 17, 76, 2, 36184.69);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (68, 67, 88, 4, 19887.04);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (69, 2, 2, 3, 38188.76);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (70, 16, 55, 2, 47082.05);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (71, 62, 10, 2, 39549.1);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (72, 50, 12, 1, 19997.28);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (73, 14, 41, 3, 26037.74);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (74, 39, 18, 4, 9934.65);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (75, 100, 97, 2, 1755.03);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (76, 83, 87, 2, 28259.97);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (77, 9, 68, 5, 28461.9);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (78, 2, 79, 2, 18471.06);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (79, 57, 45, 2, 48996.92);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (80, 81, 96, 2, 12487.48);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (81, 53, 79, 4, 18471.06);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (82, 28, 12, 1, 19997.28);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (83, 18, 97, 1, 1755.03);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (84, 76, 94, 4, 26511.8);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (85, 45, 55, 3, 47082.05);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (86, 18, 32, 3, 4637.95);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (87, 83, 11, 2, 40211.54);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (88, 71, 77, 5, 3245.9);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (89, 93, 78, 3, 46165.83);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (90, 100, 89, 1, 2406.7);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (91, 85, 39, 2, 46955.59);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (92, 67, 78, 5, 46165.83);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (93, 25, 96, 4, 12487.48);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (94, 38, 83, 1, 4042.42);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (95, 31, 64, 4, 32578.35);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (96, 15, 31, 4, 24987.54);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (97, 82, 77, 1, 3245.9);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (98, 68, 2, 3, 38188.76);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (99, 41, 17, 4, 17398.25);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_each) VALUES (100, 73, 54, 3, 30561.32);
SELECT * FROM order_items;

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    payment_date DATE,
    payment_method VARCHAR(30),
    transaction_id VARCHAR(100),
    amount DECIMAL(12,2),
    status VARCHAR(20) DEFAULT 'Success',
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert payments
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (1, 1, '2025-06-21', 'UPI', 'TXN19796799', 37755.13, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (2, 2, '2023-03-23', 'Credit Card', 'TXN45189912', 151508.4, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (3, 3, '2023-05-02', 'Credit Card', 'TXN63415303', 51952.78, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (4, 4, '2024-09-20', 'Wallet', 'TXN65758338', 20844.34, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (5, 5, '2024-09-17', 'UPI', 'TXN21063273', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (6, 6, '2022-05-15', 'Net Banking', 'TXN21220209', 164769.88, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (7, 7, '2022-06-01', 'Credit Card', 'TXN78626154', 135900.64, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (8, 8, '2021-09-16', 'Wallet', 'TXN53855682', 57155.08, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (9, 9, '2022-05-08', 'Net Banking', 'TXN68718382', 247454.62, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (10, 10, '2023-02-21', 'Credit Card', 'TXN42813517', 0.0, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (11, 11, '2023-07-28', 'Credit Card', 'TXN70850538', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (12, 12, '2022-10-24', 'Net Banking', 'TXN99399687', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (13, 13, '2022-06-12', 'Credit Card', 'TXN11699863', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (14, 14, '2021-12-27', 'Credit Card', 'TXN31989243', 124572.7, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (15, 15, '2025-12-12', 'Wallet', 'TXN79420474', 99950.16, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (16, 16, '2023-05-17', 'Debit Card', 'TXN59911470', 94164.1, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (17, 17, '2023-06-21', 'Credit Card', 'TXN13940129', 72369.38, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (18, 18, '2024-06-13', 'Net Banking', 'TXN80310522', 22689.0, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (19, 19, '2021-11-01', 'Wallet', 'TXN94226031', 67525.74, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (20, 20, '2023-09-20', 'UPI', 'TXN71095611', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (21, 21, '2022-04-16', 'Credit Card', 'TXN77056519', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (22, 22, '2022-08-20', 'Net Banking', 'TXN31113788', 352078.22, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (23, 23, '2024-12-22', 'Wallet', 'TXN25479814', 0.0, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (24, 24, '2022-12-26', 'Credit Card', 'TXN11649277', 0.0, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (25, 25, '2025-08-06', 'UPI', 'TXN58852098', 49949.92, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (26, 26, '2021-03-01', 'Debit Card', 'TXN14746418', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (27, 27, '2021-07-11', 'Debit Card', 'TXN53191535', 253980.5, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (28, 28, '2022-01-13', 'Net Banking', 'TXN46407626', 134913.45, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (29, 29, '2021-10-26', 'Credit Card', 'TXN77382794', 78858.84, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (30, 30, '2024-01-01', 'Debit Card', 'TXN39955391', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (31, 31, '2021-09-24', 'UPI', 'TXN19251149', 130313.4, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (32, 32, '2025-12-26', 'Net Banking', 'TXN53929586', 41688.68, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (33, 33, '2021-09-12', 'Credit Card', 'TXN59515518', 120634.62, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (34, 34, '2025-05-30', 'Net Banking', 'TXN85672859', 48996.92, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (35, 35, '2021-06-16', 'UPI', 'TXN59428849', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (36, 36, '2022-05-29', 'Debit Card', 'TXN83357939', 59991.84, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (37, 37, '2024-07-16', 'Debit Card', 'TXN10856024', 75467.8, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (38, 38, '2021-12-06', 'Debit Card', 'TXN82684966', 64659.46, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (39, 39, '2023-11-02', 'Credit Card', 'TXN54965270', 83119.96, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (40, 40, '2022-12-19', 'UPI', 'TXN51273379', 0.0, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (41, 41, '2021-11-12', 'Wallet', 'TXN41966313', 142733.3, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (42, 42, '2023-01-14', 'Credit Card', 'TXN29109045', 114976.53, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (43, 43, '2024-02-14', 'Credit Card', 'TXN15892193', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (44, 44, '2024-11-21', 'Wallet', 'TXN65439545', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (45, 45, '2022-12-29', 'UPI', 'TXN21395409', 220104.99, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (46, 46, '2021-07-09', 'Wallet', 'TXN27919925', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (47, 47, '2025-10-19', 'Credit Card', 'TXN89442904', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (48, 48, '2023-08-16', 'UPI', 'TXN98911718', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (49, 49, '2024-07-08', 'Debit Card', 'TXN49148093', 14628.06, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (50, 50, '2025-05-31', 'UPI', 'TXN53788744', 188836.78, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (51, 51, '2023-03-18', 'UPI', 'TXN46501299', 0.0, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (52, 52, '2024-06-13', 'Debit Card', 'TXN28268622', 137020.5, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (53, 53, '2023-08-13', 'Debit Card', 'TXN24181143', 73884.24, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (54, 54, '2021-03-21', 'UPI', 'TXN52148834', 0.0, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (55, 55, '2021-02-13', 'Wallet', 'TXN58088526', 44441.72, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (56, 56, '2025-07-05', 'Net Banking', 'TXN72189327', 0.0, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (57, 57, '2024-07-26', 'Credit Card', 'TXN31154777', 187350.44, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (58, 58, '2025-03-26', 'Wallet', 'TXN15412975', 0.0, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (59, 59, '2023-05-14', 'Debit Card', 'TXN22242388', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (60, 60, '2022-07-12', 'Net Banking', 'TXN63183031', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (61, 61, '2021-06-09', 'Net Banking', 'TXN44918995', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (62, 62, '2025-04-17', 'Credit Card', 'TXN64276605', 79098.2, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (63, 63, '2021-07-18', 'Wallet', 'TXN83835976', 268992.71, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (64, 64, '2024-06-15', 'UPI', 'TXN23677772', 109245.84, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (65, 65, '2023-10-24', 'Credit Card', 'TXN18277097', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (66, 66, '2022-07-14', 'Debit Card', 'TXN36592965', 28259.97, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (67, 67, '2022-06-18', 'Credit Card', 'TXN88158177', 310377.31, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (68, 68, '2021-10-11', 'Credit Card', 'TXN12925970', 114566.28, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (69, 69, '2025-01-27', 'UPI', 'TXN27286109', 0.0, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (70, 70, '2023-12-08', 'Credit Card', 'TXN15730602', 65982.75, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (71, 71, '2023-04-09', 'Debit Card', 'TXN87025433', 61903.0, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (72, 72, '2024-07-09', 'UPI', 'TXN13957046', 0.0, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (73, 73, '2024-09-23', 'Debit Card', 'TXN57505459', 141633.88, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (74, 74, '2021-06-25', 'Net Banking', 'TXN47561442', 114650.83, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (75, 75, '2022-11-24', 'Credit Card', 'TXN92423989', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (76, 76, '2025-01-22', 'Net Banking', 'TXN76960098', 106047.2, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (77, 77, '2023-07-11', 'Credit Card', 'TXN21773787', 52572.56, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (78, 78, '2022-09-28', 'UPI', 'TXN28419506', 0.0, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (79, 79, '2023-07-18', 'Wallet', 'TXN43440045', 19869.3, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (80, 80, '2021-08-04', 'UPI', 'TXN58199211', 0.0, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (81, 81, '2021-12-12', 'Net Banking', 'TXN85920407', 264800.18, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (82, 82, '2024-04-22', 'UPI', 'TXN46297263', 15594.9, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (83, 83, '2021-08-24', 'Net Banking', 'TXN90143600', 136943.02, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (84, 84, '2021-05-02', 'Net Banking', 'TXN17863981', 224224.58, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (85, 85, '2023-11-09', 'Wallet', 'TXN41240803', 93911.18, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (86, 86, '2022-09-07', 'Debit Card', 'TXN98162850', 20453.04, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (87, 87, '2025-07-19', 'Wallet', 'TXN17503932', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (88, 88, '2022-03-24', 'Wallet', 'TXN62133188', 192921.04, 'Failed');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (89, 89, '2021-12-22', 'Debit Card', 'TXN41749355', 275047.08, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (90, 90, '2024-07-06', 'Net Banking', 'TXN89398174', 34796.5, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (91, 91, '2023-12-31', 'Wallet', 'TXN85645982', 156139.75, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (92, 92, '2022-06-13', 'Wallet', 'TXN35264294', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (93, 93, '2023-12-05', 'Wallet', 'TXN51480401', 237113.37, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (94, 94, '2024-10-20', 'Credit Card', 'TXN22114140', 112211.46, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (95, 95, '2023-08-23', 'Wallet', 'TXN39368039', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (96, 96, '2025-02-22', 'Wallet', 'TXN74154596', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (97, 97, '2022-05-04', 'Net Banking', 'TXN92427773', 0.0, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (98, 98, '2022-09-16', 'Debit Card', 'TXN55735904', 27114.16, 'Success');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (99, 99, '2024-07-08', 'Net Banking', 'TXN17993466', 0.0, 'Pending');
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, transaction_id, amount, status) VALUES (100, 100, '2022-08-12', 'Wallet', 'TXN29012298', 127321.87, 'Success');

SELECT * FROM payments;

CREATE TABLE feedback (
    feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    feedback_date DATE,
    rating INT,
    comments TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert feedback
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (1, 100, 15, '2025-06-03', 3, 'Delivery was late');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (2, 76, 13, '2023-05-11', 2, 'Value for money');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (3, 94, 56, '2024-11-11', 2, 'Product damaged');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (4, 89, 79, '2023-04-22', 5, 'Value for money');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (5, 49, 40, '2023-03-06', 1, 'Amazing');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (6, 51, 99, '2025-01-06', 5, 'Would recommend');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (7, 79, 29, '2025-02-16', 2, 'Would recommend');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (8, 96, 10, '2022-06-11', 2, 'Satisfied');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (9, 91, 86, '2023-08-01', 3, 'Not as expected');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (10, 32, 89, '2021-06-09', 1, 'Very good product');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (11, 7, 50, '2024-12-14', 2, 'Delivery was late');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (12, 64, 49, '2023-09-13', 1, 'Packaging was good');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (13, 74, 84, '2022-03-15', 1, 'Very good product');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (14, 38, 3, '2023-05-04', 1, 'Would recommend');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (15, 22, 49, '2022-12-03', 5, 'Satisfied');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (16, 44, 77, '2025-08-23', 1, 'Delivery was late');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (17, 84, 22, '2025-07-06', 1, 'Satisfied');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (18, 43, 27, '2022-07-23', 5, 'Product damaged');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (19, 34, 85, '2023-05-08', 1, 'Very good product');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (20, 51, 74, '2025-08-05', 1, 'Would recommend');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (21, 1, 55, '2021-05-27', 5, 'Packaging was good');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (22, 26, 13, '2021-04-06', 3, 'Satisfied');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (23, 61, 15, '2023-07-16', 4, 'Excellent quality');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (24, 12, 83, '2025-07-06', 3, 'Delivery was late');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (25, 48, 24, '2024-01-09', 4, 'Packaging was good');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (26, 34, 29, '2023-10-02', 2, 'Satisfied');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (27, 11, 86, '2023-09-14', 5, 'Not as expected');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (28, 71, 8, '2024-09-14', 5, 'Packaging was good');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (29, 74, 31, '2024-05-03', 4, 'Very good product');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (30, 65, 74, '2025-10-22', 5, 'Value for money');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (31, 16, 97, '2024-03-06', 2, 'Not as expected');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (32, 17, 6, '2024-02-22', 4, 'Not as expected');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (33, 81, 19, '2025-05-11', 1, 'Satisfied');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (34, 50, 72, '2024-09-11', 3, 'Product damaged');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (35, 59, 2, '2025-10-17', 4, 'Satisfied');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (36, 54, 20, '2022-10-19', 5, 'Satisfied');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (37, 14, 73, '2021-05-28', 5, 'Would recommend');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (38, 53, 34, '2024-11-16', 5, 'Amazing');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (39, 61, 5, '2022-05-13', 2, 'Amazing');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (40, 78, 88, '2024-01-13', 3, 'Not as expected');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (41, 7, 96, '2024-05-12', 1, 'Would recommend');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (42, 39, 40, '2023-08-28', 1, 'Not as expected');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (43, 18, 39, '2024-06-09', 4, 'Amazing');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (44, 83, 12, '2022-08-07', 4, 'Packaging was good');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (45, 98, 67, '2023-01-17', 2, 'Satisfied');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (46, 40, 91, '2025-07-05', 5, 'Amazing');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (47, 4, 23, '2022-04-27', 1, 'Not as expected');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (48, 5, 59, '2021-06-23', 2, 'Excellent quality');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (49, 48, 60, '2025-07-21', 1, 'Very good product');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (50, 31, 48, '2024-10-15', 2, 'Packaging was good');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (51, 76, 71, '2023-06-06', 3, 'Satisfied');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (52, 37, 4, '2024-01-06', 5, 'Not as expected');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (53, 29, 83, '2022-11-07', 3, 'Delivery was late');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (54, 66, 3, '2021-08-05', 2, 'Amazing');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (55, 2, 29, '2023-10-26', 3, 'Excellent quality');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (56, 55, 49, '2023-08-09', 2, 'Packaging was good');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (57, 39, 87, '2025-10-13', 5, 'Satisfied');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (58, 1, 66, '2023-09-21', 5, 'Amazing');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (59, 37, 39, '2021-08-03', 3, 'Excellent quality');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (60, 82, 42, '2023-05-21', 3, 'Not as expected');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (61, 20, 67, '2022-01-26', 5, 'Delivery was late');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (62, 85, 41, '2022-12-01', 4, 'Excellent quality');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (63, 34, 54, '2024-07-24', 1, 'Amazing');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (64, 91, 74, '2022-06-24', 2, 'Product damaged');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (65, 82, 61, '2023-09-10', 2, 'Product damaged');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (66, 24, 38, '2021-08-05', 3, 'Product damaged');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (67, 98, 24, '2023-11-03', 2, 'Would recommend');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (68, 29, 96, '2023-07-26', 3, 'Would recommend');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (69, 34, 75, '2023-08-28', 1, 'Packaging was good');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (70, 7, 82, '2025-10-20', 1, 'Packaging was good');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (71, 25, 65, '2021-11-13', 5, 'Excellent quality');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (72, 53, 7, '2022-03-07', 3, 'Delivery was late');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (73, 73, 59, '2022-06-28', 2, 'Satisfied');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (74, 63, 43, '2022-06-21', 1, 'Very good product');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (75, 58, 36, '2022-03-19', 2, 'Packaging was good');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (76, 98, 100, '2021-03-20', 4, 'Delivery was late');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (77, 52, 55, '2024-07-01', 1, 'Product damaged');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (78, 26, 94, '2023-01-11', 5, 'Not as expected');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (79, 3, 87, '2021-11-24', 2, 'Not as expected');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (80, 89, 45, '2023-03-04', 4, 'Product damaged');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (81, 76, 40, '2022-02-27', 1, 'Excellent quality');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (82, 38, 59, '2025-10-17', 3, 'Delivery was late');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (83, 88, 18, '2023-08-12', 2, 'Value for money');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (84, 52, 3, '2022-04-24', 2, 'Not as expected');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (85, 94, 3, '2025-09-06', 1, 'Would recommend');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (86, 92, 84, '2021-07-21', 3, 'Product damaged');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (87, 80, 7, '2025-01-22', 1, 'Very good product');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (88, 7, 89, '2021-07-15', 4, 'Satisfied');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (89, 71, 33, '2024-12-05', 2, 'Very good product');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (90, 39, 54, '2021-11-17', 3, 'Amazing');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (91, 78, 90, '2022-07-27', 1, 'Product damaged');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (92, 93, 80, '2021-05-04', 1, 'Packaging was good');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (93, 26, 78, '2022-05-27', 5, 'Not as expected');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (94, 46, 91, '2024-05-06', 1, 'Product damaged');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (95, 64, 27, '2024-06-08', 1, 'Very good product');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (96, 86, 12, '2021-10-22', 4, 'Value for money');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (97, 12, 100, '2025-02-24', 1, 'Excellent quality');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (98, 83, 30, '2024-05-09', 4, 'Very good product');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (99, 13, 23, '2021-05-12', 3, 'Delivery was late');
INSERT INTO feedback (feedback_id, customer_id, product_id, feedback_date, rating, comments) VALUES (100, 95, 15, '2021-01-01', 2, 'Value for money');


SELECT * FROM feedback;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role VARCHAR(20) DEFAULT 'Staff',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    last_login DATETIME
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert users
INSERT INTO users (user_id, username, password_hash, role, created_at, last_login) VALUES (1, 'user001', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e', 'Staff', '2025-10-10 05:39:28', '2025-04-10 05:39:28');
INSERT INTO users (user_id, username, password_hash, role, created_at, last_login) VALUES (2, 'user002', '6cf615d5bcaac778352a8f1f3360d23f02f34ec182e259897fd6ce485d7870d4', 'Staff', '2025-10-10 05:39:28', '2024-11-26 05:39:28');
INSERT INTO users (user_id, username, password_hash, role, created_at, last_login) VALUES (3, 'user003', '5906ac361a137e2d286465cd6588ebb5ac3f5ae955001100bc41577c3d751764', 'Staff', '2025-10-10 05:39:28', '2025-08-24 05:39:28');
INSERT INTO users (user_id, username, password_hash, role, created_at, last_login) VALUES (4, 'user004', 'b97873a40f73abedd8d685a7cd5e5f85e4a9cfb83eac26886640a0813850122b', 'Staff', '2025-10-10 05:39:28', '2025-04-18 05:39:28');
INSERT INTO users (user_id, username, password_hash, role, created_at, last_login) VALUES (5, 'user005', '8b2c86ea9cf2ea4eb517fd1e06b74f399e7fec0fef92e3b482a6cf2e2b092023', 'Admin', '2025-10-10 05:39:28', '2025-08-13 05:39:28');
INSERT INTO users (user_id, username, password_hash, role, created_at, last_login) VALUES (6, 'user006', '598a1a400c1dfdf36974e69d7e1bc98593f2e15015eed8e9b7e47a83b31693d5', 'Staff', '2025-10-10 05:39:28', '2025-03-20 05:39:28');
INSERT INTO users (user_id, username, password_hash, role, created_at, last_login) VALUES (7, 'user007', '5860836e8f13fc9837539a597d4086bfc0299e54ad92148d54538b5c3feefb7c', 'Staff', '2025-10-10 05:39:28', '2025-05-24 05:39:28');
INSERT INTO users (user_id, username, password_hash, role, created_at, last_login) VALUES (8, 'user008', '57f3ebab63f156fd8f776ba645a55d96360a15eeffc8b0e4afe4c05fa88219aa', 'Staff', '2025-10-10 05:39:28', '2024-10-22 05:39:28');
INSERT INTO users (user_id, username, password_hash, role, created_at, last_login) VALUES (9, 'user009', '9323dd6786ebcbf3ac87357cc78ba1abfda6cf5e55cd01097b90d4a286cac90e', 'Staff', '2025-10-10 05:39:28', '2025-03-09 05:39:28');
INSERT INTO users (user_id, username, password_hash, role, created_at, last_login) VALUES (10, 'user010', 'aa4a9ea03fcac15b5fc63c949ac34e7b0fd17906716ac3b8e58c599cdc5a52f0', 'Manager', '2025-10-10 05:39:28', '2025-07-17 05:39:28');

SELECT * FROM users;




