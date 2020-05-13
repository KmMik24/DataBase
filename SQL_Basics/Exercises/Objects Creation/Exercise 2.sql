/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    ISBN 985-475-004-3
    Exercises from page 99
*/

-- 1
CREATE TABLE EXAM_MARKS1
(
    exam_id     INTEGER NOT NULL,
    subj_id     INTEGER NOT NULL,
    student_id  INTEGER NOT NULL,
    mark        INTEGER,
    exam_date   DATE    NOT NULL,

    CONSTRAINT EXAM_MARKS_CONSTR_1
        UNIQUE (exam_id, subj_id, student_id),
    CONSTRAINT EXAM_MARKS_CONSTR_2
        UNIQUE (exam_id, exam_date)
);

-- 2
CREATE TABLE SUBJECTS1 
(
    subj_id     INTEGER      NOT NULL Primary key,
    subj_name   NVARCHAR(25) NOT NULL,
    hour        INTEGER      NOT NULL DEFAULT 36,
    semester    INTEGER      CHECK (semester BETWEEN 1 AND 12)
);

-- 3
CREATE TABLE EXAM_MARKS2 
(
    exam_id     INTEGER   NOT NULL,
    student_id  INTEGER   NOT NULL,
    subj_id     INTEGER   NOT NULL,
    mark        INTEGER,
    exam_date   DATE

    CONSTRAINT EXAM_MARKS_2_CHECK
        CHECK ((exam_id > subj_id) AND (subj_id > student_id))
);