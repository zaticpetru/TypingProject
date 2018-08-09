﻿CREATE TABLE [dbo].[User]
(
	UserID INT NOT NULL PRIMARY KEY IDENTITY,
	FirstName VARCHAR(30) NOT NULL,
	LastName VARCHAR(30) NOT NULL,
	Age SMALLINT,
	ShortDescription VARCHAR(200),
	RegistrationDate DATE NOT NULL
)
