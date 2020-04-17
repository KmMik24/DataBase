/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    ISBN 985-475-004-3
    Page 20. LECTURER Table.
*/

CREATE TABLE LECTURER (
    lecturer_id INTEGER     NOT NULL Primary key,
    surname     NVARCHAR(25) NOT NULL,
    firstname   NVARCHAR(25) NOT NULL, 
    city        NVARCHAR(25),
    univ_id     INTEGER
);

INSERT INTO LECTURER (lecturer_id, surname, firstname, city, univ_id) 
    VALUES (24, 'Колесников', 'Борис', 'Воронеж', 10);

INSERT INTO LECTURER (lecturer_id, surname, firstname, city, univ_id)
    VALUES (46, 'Никонов', 'Иван', 'Воронеж', 10);

INSERT INTO LECTURER (lecturer_id, surname, firstname, city, univ_id)
    VALUES (74, 'Лагутин', 'Павел', 'Москва', 2);

INSERT INTO LECTURER (lecturer_id, surname, firstname, city, univ_id)
    VALUES (108, 'Струков', 'Николай', 'Москва', 22);

INSERT INTO LECTURER (lecturer_id, surname, firstname, city, univ_id)
    VALUES (276, 'Николаев', 'Виктор', 'Воронеж', 10);

INSERT INTO LECTURER (lecturer_id, surname, firstname, city, univ_id)
    VALUES (328, 'Сорокин', 'Андрей', 'Орел', 10);