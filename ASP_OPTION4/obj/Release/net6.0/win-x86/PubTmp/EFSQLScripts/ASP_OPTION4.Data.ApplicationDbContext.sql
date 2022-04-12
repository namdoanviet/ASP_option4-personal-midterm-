﻿IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220411102447_AddCategoryToDatabase')
BEGIN
    CREATE TABLE [Categories] (
        [ID] int NOT NULL IDENTITY,
        [Name] nvarchar(max) NOT NULL,
        [DisplayOrder] int NOT NULL,
        [CreatedDateTime] datetime2 NOT NULL,
        CONSTRAINT [PK_Categories] PRIMARY KEY ([ID])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20220411102447_AddCategoryToDatabase')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20220411102447_AddCategoryToDatabase', N'6.0.3');
END;
GO

COMMIT;
GO

