CREATE TABLE [dbo].[GroupMapping]
(
	[GroupMapId] INT IDENTITY (1,1) NOT NULL PRIMARY KEY,
	[ContactID] INT NOT NULL,
	[GroupId] INT NOT NULL,
	FOREIGN KEY(ContactID) REFERENCES Contacts(ContactID),
	FOREIGN KEY(GroupId) REFERENCES Groups(GroupId)
)
