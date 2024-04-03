CREATE DATABASE MUSICRADIODB;
GO

USE MUSICRADIODB;
GO

-- Crear la tabla AlbumSet con el nombre del artista
CREATE TABLE AlbumSet (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(MAX),
    Artist NVARCHAR(100) -- Agregado el campo para el nombre del artista
);

-- Crear la tabla SongSet
CREATE TABLE SongSet (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(MAX),
    Album_Id INT FOREIGN KEY REFERENCES AlbumSet(Id)
);

-- Crear la tabla Client con contraseña
CREATE TABLE Client (
    Id NVARCHAR(10) PRIMARY KEY,
    Name NVARCHAR(100),
    Mail NVARCHAR(50),
    Direction NVARCHAR(500),
    Phone NVARCHAR(20),
    Password NVARCHAR(30) -- Agregado el campo para la contraseña
);

-- Crear la tabla PurchaseDetail
CREATE TABLE PurchaseDetail (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Client_Id NVARCHAR(10) FOREIGN KEY REFERENCES Client(Id),
    Album_Id INT FOREIGN KEY REFERENCES AlbumSet(Id),
    Total REAL
);
