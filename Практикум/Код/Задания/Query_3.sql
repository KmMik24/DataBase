SELECT FULL_NAME 
FROM HUMAN A WHERE Person_ID = (
  SELECT Person_ID 
  FROM RENT B WHERE Amount > 300 
    AND A.Person_ID = B.Person_ID
);
--Имена Людей с квартплатой больше 300 AZN