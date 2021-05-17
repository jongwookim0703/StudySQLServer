CREATE SCHEMA production
GO

Create Table production.parts (
	part_id Int Not Null,
	part_name VarChar(100)
)
GO

Select * FRom production.parts

