SELECT COUNT(PERSON_ID) 
FROM CHOOSE_OFFER A WHERE Offer_ID = (
  SELECT Offer_ID 
  FROM OFFERS B WHERE Offer_Type = 'WATER' 
    AND Privileges > 2
    AND A.Offer_ID = B.Offer_ID
);
-- У скольких людей льготы на воду больше 2% и тд