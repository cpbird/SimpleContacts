CREATE TABLE [dbo].[Contacts] (
    [ContactID]     INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]     NVARCHAR (256) NULL,
    [LastName]      NVARCHAR (256) NULL,
    [Note]          TEXT           NULL,
    [StreetAddress] VARCHAR (256)  NULL,
    [CityAddress]   VARCHAR (128)  NULL,
    [StateAddress]  VARCHAR (2)    NULL,
    [ZipAddress]    VARCHAR (10)   NULL,
    [Email]         NVARCHAR (128) NULL,
    [Phone]         NVARCHAR (10)  NULL,
	[GroupId]		INT NULL,
	FOREIGN KEY (GroupId) REFERENCES Groups(GroupId),
    PRIMARY KEY CLUSTERED ([ContactID] ASC)
);

