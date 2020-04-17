/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    ISBN 985-475-004-3
    Page 19. STUDENT Table.
*/

CREATE TABLE STUDENT (
    student_id  INTEGER      NOT NULL Primary key,
    surname     NVARCHAR(20) NOT NULL,
    firstname   NVARCHAR(20) NOT NULL,
    stipend     INTEGER,
    kurs        INTEGER,  
    city        NVARCHAR(20),
    birthday    DATE,
    univ_id     INTEGER
);

INSERT INTO STUDENT (student_id, surname, firstname, stipend, kurs, city, birthday, univ_id) 
    VALUES (1, 'Иванов', 'Иван', 150, 1, 'Орел', '1982-12-03', '10');

INSERT INTO STUDENT (student_id, surname, firstname, stipend, kurs, city, birthday, univ_id)
    VALUES (3, 'Петров', 'Петр', 200, 3, 'Курск', '1980-12-01', '10');

INSERT INTO STUDENT (student_id, surname, firstname, stipend, kurs, city, birthday, univ_id)
    VALUES (6, 'Сидоров', 'Вадим', 150, 4, 'Москва', '1979-06-07', '22');

INSERT INTO STUDENT (student_id, surname, firstname, stipend, kurs, city, birthday, univ_id)
    VALUES (10, 'Кузнецов', 'Борис', 0, 2, 'Брянск', '1981-12-08', '10');

INSERT INTO STUDENT (student_id, surname, firstname, stipend, kurs, city, birthday, univ_id)
    VALUES (12, 'Зайцева', 'Ольга', 250, 2, 'Липецк', '1981-05-01', '10');

INSERT INTO STUDENT (student_id, surname, firstname, stipend, kurs, city, birthday, univ_id)
    VALUES (265, 'Павлов', 'Андрей', 0, 3, 'Воронеж', '1979-11-05', '10');

INSERT INTO STUDENT (student_id, surname, firstname, stipend, kurs, city, birthday, univ_id)
    VALUES (32, 'Котов', 'Павел', 150, 5, 'Белгород', NULL, '14');

INSERT INTO STUDENT (student_id, surname, firstname, stipend, kurs, city, birthday, univ_id)
    VALUES (654, 'Лукин', 'Артем', 200, 3, 'Воронеж', '1981-12-01', '10');

INSERT INTO STUDENT (student_id, surname, firstname, stipend, kurs, city, birthday, univ_id)
    VALUES (276, 'Петров', 'Антон', 200, 4, NULL, '1981-08-05', '22');

INSERT INTO STUDENT (student_id, surname, firstname, stipend, kurs, city, birthday, univ_id)
    VALUES (55, 'Белкин', 'Вадим', 250, 5, 'Воронеж', '1980-01-07', '10');