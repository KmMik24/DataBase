/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    ISBN 985-475-004-3
    Page 85. STUDENT_PASSED Table.
*/


CREATE TABLE STUDENT_PASSED (
    student_id  INTEGER      NOT NULL Primary key,
    surname     NVARCHAR(20) NOT NULL,
    firstname   NVARCHAR(20) NOT NULL,
    stipend     INTEGER,
    kurs        INTEGER,  
    city        NVARCHAR(20),
    birthday    DATE,
    univ_id     INTEGER
);