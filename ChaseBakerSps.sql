-- This is the Alpha Male's Territory, do you have permission to be here?

--This one took forever to figure out
CREATE PROCEDURE addAttrToTable
	@Table varchar(30),
	@NewAttr varchar(30),
	@NewAttrDataType varchar(30)

	AS 
	BEGIN
		DECLARE @stmt varchar(1000)
		SET @stmt = 'ALTER TABLE '  + @Table  + ' ' + 'ADD '+ @NewAttr + ' ' + @NewAttrDataType
	
		EXECUTE (@stmt);
		

		END;
		GO
