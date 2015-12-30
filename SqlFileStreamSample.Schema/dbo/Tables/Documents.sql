CREATE TABLE [dbo].[Documents] (
    [Id]          INT                        IDENTITY (1, 1) NOT NULL,
    [RowGuid]     UNIQUEIDENTIFIER           CONSTRAINT [DF_Documents_RowGuid] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [Name]        NVARCHAR (100)             NOT NULL,
    [Description] NVARCHAR (200)             NULL,
    [UploadedAt]  DATETIMEOFFSET (7)         NOT NULL,
    [Size]        BIGINT                     NOT NULL,
    [Data]        VARBINARY (MAX) FILESTREAM NOT NULL,
    [MediaType] NVARCHAR(100) NOT NULL, 
    CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [IX_RowGuid] UNIQUE NONCLUSTERED ([RowGuid] ASC)
) FILESTREAM_ON [FileStreamSample_FS];

