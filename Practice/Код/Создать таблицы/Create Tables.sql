USE Utility_Accounting

CREATE TABLE HOUSE (
  Person_ID       INTEGER NOT NULL PRIMARY KEY,
  Flat_Number     INTEGER NOT NULL,
  House_Number    INTEGER NOT NULL,
  District_Number INTEGER NOT NULL
);

CREATE TABLE HUMAN (
  Person_ID INTEGER  NOT NULL PRIMARY KEY,
  Full_name NVARCHAR NOT NULL
);

CREATE TABLE CHOOSE_OFFER (
  Offer_ID  INTEGER NOT NULL,
  Person_ID INTEGER NOT NULL
  FOREIGN KEY (Offer_ID)
    REFERENCES OFFERS (Offer_ID),
  FOREIGN KEY (Person_ID)
    REFERENCES HUMAN (Person_ID),
);

CREATE TABLE OFFERS (
  Offer_ID   INTEGER  NOT NULL PRIMARY KEY,
  Offer_Type NVARCHAR NOT NULL,
  Quantity   INTEGER  NOT NULL,
  Price      INTEGER  NOT NULL,
  Duration   INTEGER  NOT NULL,
  Privileges INTEGER
);

CREATE TABLE RENT (
  Person_ID     INTEGER  NOT NULL,
  Payment_Date  DATE     NOT NULL,
  Amount        INTEGER  NOT NULL,
  Payed_Till    DATE     NOT NULL,
  FOREIGN KEY (Person_ID) 
    REFERENCES HUMAN (Person_ID)
);

CREATE TABLE ELEVATOR (
  Person_ID     INTEGER  NOT NULL,
  Payment_Date  DATE     NOT NULL,
  Payed_Till    DATE     NOT NULL,
  FOREIGN KEY (Person_ID) 
    REFERENCES HUMAN (Person_ID)
);

CREATE TABLE GARBAGE (
  Person_ID     INTEGER  NOT NULL,
  Payment_Date  DATE     NOT NULL,
  Payed_Till    DATE     NOT NULL,
  FOREIGN KEY (Person_ID) 
    REFERENCES HUMAN (Person_ID)
);

CREATE TABLE WATER (
  Person_ID     INTEGER  NOT NULL,
  Record_Type   NVARCHAR NOT NULL,
  Payment_Date  DATE     NOT NULL,
  Used_Quantity INTEGER  NOT NULL,
  Offer_ID      INTEGER,
  FOREIGN KEY (Person_ID) 
    REFERENCES HUMAN (Person_ID)
);

CREATE TABLE GAS (
  Person_ID     INTEGER  NOT NULL,
  Record_Type   NVARCHAR NOT NULL,
  Payment_Date  DATE     NOT NULL,
  Used_Quantity INTEGER  NOT NULL,
  Offer_ID      INTEGER,
  FOREIGN KEY (Person_ID) 
    REFERENCES HUMAN (Person_ID)
);

CREATE TABLE ELECTRICITY (
  Person_ID     INTEGER  NOT NULL,
  Payment_Date  DATE     NOT NULL,
  Used_Quantity INTEGER  NOT NULL,
  FOREIGN KEY (Person_ID) 
    REFERENCES HUMAN (Person_ID)
);


