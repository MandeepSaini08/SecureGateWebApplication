CREATE TABLE [dbo].[admin] (
    [Id]       INT           NOT NULL IDENTITY,
    [name]     NVARCHAR (50) NULL,
    [username] NVARCHAR (50) NULL,
    [address]  NVARCHAR (50) NULL,
    [email]    NVARCHAR (50) NULL,
    [password] NVARCHAR (50) NULL,
    CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED ([Id] ASC)
);

