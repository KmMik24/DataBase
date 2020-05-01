DECLARE @counter smallint;  
SET @counter = 1;  
WHILE @counter < 40  
   BEGIN  
      INSERT INTO CHOOSE_OFFER (Person_ID, Offer_ID)
      VALUES (
        ABS(CONVERT(INT, CONVERT(BINARY(4), NEWID())))%30+8,
        ABS(CONVERT(INT, CONVERT(BINARY(4), NEWID())))%8
      )  
      SET @counter = @counter + 1  
   END;  
GO