CREATE TABLE [dbo].[Competition]
(
	CompetitionID INT NOT NULL PRIMARY KEY IDENTITY,
	Competition_CategoryID INT,
	StartDateTime DATETIME NOT NULL,
	FinishDateTime DATETIME NOT NULL CHECK(StartDateTime < FinishDateTime),
	AboutComptetition VARCHAR(400),

	FOREIGN KEY (Competition_CategoryID) REFERENCES Category(CategoryID)
		ON UPDATE CASCADE
		ON DELETE SET NULL
)
