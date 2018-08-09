﻿CREATE TABLE [dbo].[Partitipation]
(
	PartitipationID INT NOT NULL PRIMARY KEY,
	Parrtitpation_CompetitionID INT NOT NULL FOREIGN KEY
		REFERENCES Competition(CompetitionID)
		ON UPDATE CASCADE
		ON DELETE CASCADE,

	Parrtitpation_UserID INT NOT NULL FOREIGN KEY
		REFERENCES [User](UserID)
		ON UPDATE CASCADE
		ON DELETE CASCADE,

	Score INT NOT NULL DEFAULT(0)
)
