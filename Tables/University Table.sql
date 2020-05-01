/*
    SQL В ПРИМЕРАХ И ЗАДАЧАХ.
    Page 21. UNIVERSITY Table.
*/

CREATE TABLE UNIVERSITY (
  univ_id   INTEGER     NOT NULL PRIMARY KEY,
  univ_name NVARCHAR(10) NOT NULL,
  rating    INTEGER,
  city      NVARCHAR(20)
);

INSERT INTO UNIVERSITY (univ_id, univ_name, rating, city)
    VALUES (22, 'МГУ', 606, 'Москва');

INSERT INTO UNIVERSITY (univ_id, univ_name, rating, city)
    VALUES (10, 'ВГУ', 296, 'Воронеж');

INSERT INTO UNIVERSITY (univ_id, univ_name, rating, city)
    VALUES (11, 'НГУ', 345, 'Новосибирск');
  
INSERT INTO UNIVERSITY (univ_id, univ_name, rating, city)
    VALUES (32, 'РГУ', 416, 'Ростов');

INSERT INTO UNIVERSITY (univ_id, univ_name, rating, city)
    VALUES (14, 'БГУ', 326, 'Белгород');

INSERT INTO UNIVERSITY (univ_id, univ_name, rating, city)
    VALUES (15, 'ТГУ', 368, 'Томск');

INSERT INTO UNIVERSITY (univ_id, univ_name, rating, city)
    VALUES (18, 'ВГМА', 327, 'Воронеж');
