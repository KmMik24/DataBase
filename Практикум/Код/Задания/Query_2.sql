SELECT Flat_Number, House_Number, District_Number
FROM HOUSE A WHERE Person_ID = (
  SELECT Person_ID 
  FROM GAS B WHERE Payed_Amount = 0 
    AND A.Person_ID = B.Person_ID
);
--Где Живут Люди Которые не оплатили счета за газ