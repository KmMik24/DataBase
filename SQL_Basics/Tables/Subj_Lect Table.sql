/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    Page 22. UNIVERSITY Table.
*/

CREATE TABLE SUBJ_LECT (
    lecturer_id INTEGER NOT NULL, 
    FOREIGN KEY (lecturer_id)
        REFERENCES LECTURER (lecturer_id),
    subj_id     INTEGER
    FOREIGN KEY (subj_id)
        REFERENCES SUBJECTS (subj_id),
);

INSERT INTO SUBJ_LECT (lecturer_id, subj_id)
    VALUES (22, 22);

INSERT INTO SUBJ_LECT (lecturer_id, subj_id)
    VALUES (46, 43);

INSERT INTO SUBJ_LECT (lecturer_id, subj_id)
    VALUES (74, 73);

INSERT INTO SUBJ_LECT (lecturer_id, subj_id)
    VALUES (74, 43);

INSERT INTO SUBJ_LECT (lecturer_id, subj_id)
    VALUES (108, 94);

INSERT INTO SUBJ_LECT (lecturer_id, subj_id)
    VALUES (276, 10);

INSERT INTO SUBJ_LECT (lecturer_id, subj_id)
    VALUES (328, 10);
