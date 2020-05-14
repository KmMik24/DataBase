/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    ISBN 985-475-004-3
    Exercises from page 109
*/

-- 1
CREATE TABLE SUBJECTS 
(
    subj_id     INTEGER Primary key,
    subj_name   NVARCHAR(25),
    hour        DECIMAL (4), 
    semester    SMALLINT
);

-- 2
CREATE TABLE SUBJ_LECT_1 
(
    lecturer_id INTEGER NOT NULL REFERENCES LECTURER1,
    subj_id     INTEGER NOT NULL REFERENCES SUBJECTS1,
    CONSTRAINT SUBJLEC_PRIM PRIMARY KEY (lecturer_id, subj_id)
);

-- 3
CREATE TABLE SUBJ_LECT_1 
(
    lecturer_id INTEGER NOT NULL,
    subj_id     INTEGER NOT NULL,
    CONSTRAINT SUBJLEC_PRIM PRIMARY KEY (lecturer_id, subj_id),
    CONSTRAINT LECT_ID_FOR_KEY FOREIGN KEY (lecturer_id)
        REFERENCES LECTURER1  ON UPDATE NO ACTION
                              ON DELETE NO ACTION,
    CONSTRAINT LECT_ID_FOR_KEY FOREIGN KEY (subj_id)
        REFERENCES SUBJECTS1  ON UPDATE NO ACTION
                              ON DELETE NO ACTION
);

-- 4
CREATE TABLE LECTURER1
(
    lecturer_id INTEGER NOT NULL Primary key,
    surname     NVARCHAR(25),
    firstname   NVARCHAR(25), 
    city        NVARCHAR(25),
    univ_id     INTEGER,
    CONSTRAINT UNIV_FOR_KEY FOREIGN KEY (univ_id)
        REFERENCES UNIVERSITY1 ON UPDATE CASCADE
                               ON DELETE CASCADE
);

-- 5
CREATE TABLE UNIVERSITY1 
(
  univ_id   INTEGER PRIMARY KEY,
  univ_name NVARCHAR(10),
  rating    INTEGER,
  city      NVARCHAR(20)
);

-- 6
CREATE TABLE EXAM_MARKS1 
(
    exam_id     INTEGER,
    student_id  INTEGER,
    subj_id     INTEGER,
    mark        INTEGER,
    subj_name   NVARCHAR(15),
    surname     NVARCHAR(15)
    CONSTRAINT EX_MARKS_PR_KEY
        PRIMARY KEY (exam_id, subj_id, student_id),
    CONSTRAINT EX_MARKS_FOR_KEY_1
        FOREIGN KEY (subj_id) REFERENCES SUBJECTS1
            ON UPDATE CASCADE
            ON DELETE NO ACTION,
    CONSTRAINT EX_MARKS_FOR_KEY_2
        FOREIGN KEY (student_id) REFERENCES STUDENT1
            ON UPDATE CASCADE
            ON DELETE NO ACTION
);

-- 7
CREATE TABLE STUDENT1 
(
    student_id  INTEGER      NOT NULL Primary key,
    surname     NVARCHAR(20) NOT NULL,
    firstname   NVARCHAR(20) NOT NULL,
    stipend     INTEGER,
    kurs        INTEGER,  
    city        NVARCHAR(20),
    birthday    DATE,
    univ_id     INTEGER REFERENCES UNIVERSITY1,
    senior_student INTEGER REFERENCES STUDENT (student_id)
);

-- 8
CREATE TABLE STUDENT2
(
    student_id  INTEGER      NOT NULL Primary key,
    surname     NVARCHAR(20) NOT NULL,
    firstname   NVARCHAR(20) NOT NULL,
    stipend     INTEGER,
    kurs        INTEGER,  
    city        NVARCHAR(20),
    birthday    DATE,
    univ_id     INTEGER 
        REFERENCES UNIVERSITY1
          ON DELETE SET NULL
);

-- 9
-- УЖЕ СДЕЛАН В ТАБЛИЦАХ
