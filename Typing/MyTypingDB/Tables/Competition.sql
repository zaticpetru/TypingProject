CREATE TABLE [dbo].[Competition]
(
	ID INT NOT NULL IDENTITY
		CONSTRAINT [PK_dboCompetition] PRIMARY KEY,
	
	CompetitionName VARCHAR(90) NOT NULL
		CONSTRAINT [UniqueCompetitonName] UNIQUE,

	CategoryID INT
		CONSTRAINT [FK_dboCompetition_Category] FOREIGN KEY 
		REFERENCES Category(ID)
		ON UPDATE CASCADE
		ON DELETE SET NULL,

	StartDateTime DATETIME NOT NULL,
	FinishDateTime DATETIME NOT NULL,
	AboutComptetition VARCHAR(400),

	CONSTRAINT CheckDateTime CHECK(StartDateTime < FinishDateTime)
)
