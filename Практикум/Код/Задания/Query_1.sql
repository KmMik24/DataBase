SELECT COUNT(Person_ID), SUM(Payed_Amount) 
FROM WATER WHERE Payment_Date 
BETWEEN '01-01-2020' AND '01-03-2020';
-- сколько людей заплатили и сумма за определенный период времени
