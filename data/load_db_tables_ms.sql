LOAD DATA INFILE '/data/retail_db_csv/categories/part-r-00001'
    INTO TABLE categories
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n';

LOAD DATA INFILE '/data/retail_db_csv/customers/part-r-00002'
    INTO TABLE customers
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n';

LOAD DATA INFILE '/data/retail_db_csv/departments/part-r-00003'
    INTO TABLE departments
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n';

LOAD DATA INFILE '/data/retail_db_csv/order_items/part-r-00004'
    INTO TABLE order_items
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n';

LOAD DATA INFILE '/data/retail_db_csv/orders/part-r-00005'
    INTO TABLE orders
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n';

LOAD DATA INFILE '/data/retail_db_csv/products/part-r-00006'
    INTO TABLE products
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n';

