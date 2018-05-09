CREATE TABLE [dbo].[ContactMapping]
(
	[MapId] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ContactId] INT NOT NULL,
	[GroupId] INT NOT NULL,
	
	FOREIGN KEY(ContactId) REFERENCES Contacts(ContactID),
	FOREIGN KEY(GroupId) REFERENCES Groups(GroupId)

)
