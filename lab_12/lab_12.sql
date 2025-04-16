CREATE TABLE shop (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
balance FLOAT NOT NULL);

CREATE TABLE product (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
price FLOAT NOT NULL);

CREATE TABLE warehouse (
shop_id INTEGER REFERENCES shop (id),
product_id INTEGER REFERENCES product (id),
quantity INTEGER NOT NULL,
PRIMARY KEY (shop_id, product_id));

CREATE TABLE worker (
worker_id INTEGER PRIMARY KEY,
shop_id INTEGER REFERENCES product (id),
name VARCHAR(255),
salary INTEGER NOT NULL,
position VARCHAR(255));

INSERT INTO shop (id, name, balance) VALUES (1, 'пятерочка',31);
INSERT INTO shop (id, name, balance) VALUES (2, 'перекресток',133);
INSERT INTO product VALUES (1, 'молоко', 100);
INSERT INTO product VALUES (2, 'хлеб', 25);
INSERT INTO warehouse VALUES (1, 1, 20);
INSERT INTO warehouse VALUES (1, 2, 10);
INSERT INTO warehouse VALUES (2, 1, 30);

INSERT INTO worker VALUES (1, 2, "Danil", 62000, "manager");
INSERT INTO worker VALUES (2, 1, "Ivan", 42000, "cashier");
INSERT INTO worker VALUES (3, 2, "Vasiliy", 23000, "cleaner");
INSERT INTO worker VALUES (4, 2, "Denis", 39000, "cashier");
INSERT INTO worker VALUES (5, 1, "Elena", 21000, "cleaner");

SELECT * FROM worker;

SELECT position, avg(salary) as avg_salary FROM worker
GROUP BY position
ORDER BY avg_salary DESC;

SELECT shop_id, avg(salary) as avg_salary FROM worker
GROUP BY shop_id
ORDER BY avg_salary ASC;

