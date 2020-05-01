USE Utility_Accounting;

DECLARE @counter smallint;  
SET @counter = 1;  
WHILE @counter < 60  
   BEGIN  
      INSERT INTO HOUSE (Person_ID, Flat_Number, House_Number, District_Number)
      VALUES (
        @counter,
        ABS(CONVERT(INT, CONVERT(BINARY(4), NEWID())))%30+10,
        ABS(CONVERT(INT, CONVERT(BINARY(4), NEWID())))%50+1,
        ABS(CONVERT(INT, CONVERT(BINARY(4), NEWID())))%5+1
      )  
      SET @counter = @counter + 1  
   END;  
GO