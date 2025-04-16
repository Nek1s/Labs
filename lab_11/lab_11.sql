CREATE TABLE group1 (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
description VARCHAR(255) UNIQUE);

CREATE TABLE student (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
group_id INTEGER REFERENCES group1 (id));

CREATE TABLE student_mark (
student_id INTEGER REFERENCES student (id),
math_mark_average FLOAT,
physics_mark_average FLOAT,
python_mark_average FLOAT);

INSERT INTO group1 (id, name, description)  VALUES (1, "BPI2403", "adasadf");
INSERT INTO group1 (id, name, description)  VALUES (2, "BPI2401", "adggef");

INSERT INTO student (id, name, group_id) VALUES (1, "Ivan", 2);
INSERT INTO student (id, name, group_id) VALUES (2, "Danil", 1);
INSERT INTO student (id, name, group_id) VALUES (3, "Maxim", 2);
INSERT INTO student (id, name, group_id) VALUES (4, "Denis", 1);

INSERT INTO student_mark (student_id, math_mark_average, physics_mark_average, python_mark_average) VALUES (1, 4.1, 4.2, 4.5);
INSERT INTO student_mark (student_id, math_mark_average, physics_mark_average, python_mark_average) VALUES (2, 4, 4.3, 4.1);
INSERT INTO student_mark (student_id, math_mark_average, physics_mark_average, python_mark_average) VALUES (3, 4.2, 3.9, 4);
INSERT INTO student_mark (student_id, math_mark_average, physics_mark_average, python_mark_average) VALUES (4, 3.8, 4.3, 3.9);

SELECT * FROM group1;
SELECT * FROM student;
SELECT * FROM student_mark;

SELECT * FROM group1
WHERE id = 1;
SELECT * FROM student
WHERE group_id = 2;
SELECT * FROM student_mark
WHERE physics_mark_average < 4;