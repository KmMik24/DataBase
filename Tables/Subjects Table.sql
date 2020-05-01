/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    Page 20. SUBJECTS Table.
*/

CREATE TABLE SUBJECTS (
    subj_id     INTEGER     NOT NULL Primary key,
    subj_name   NVARCHAR(25) NOT NULL,
    hour        INTEGER, 
    semester    INTEGER
);

INSERT INTO SUBJECTS (subj_id, subj_name, hour, semester) 
    VALUES (10, 'Информатика', 56, 1);

INSERT INTO SUBJECTS (subj_id, subj_name, hour, semester)
    VALUES (22, 'Физика', 34, 1);

INSERT INTO SUBJECTS (subj_id, subj_name, hour, semester)
    VALUES (43, 'Математика', 56, 2);

INSERT INTO SUBJECTS (subj_id, subj_name, hour, semester)
    VALUES (56, 'История', 34, 4);

INSERT INTO SUBJECTS (subj_id, subj_name, hour, semester)
    VALUES (94, 'Английский', 56, 3);

INSERT INTO SUBJECTS (subj_id, subj_name, hour, semester)
    VALUES (73, 'Физкультура', 34, 5); 
