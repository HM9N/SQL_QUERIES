--=========== Procedimientos almacenados albumes ============


create procedure sp_AlbumList
as
begin
	select Id,Name, Artist from AlbumSet
end

go

create procedure sp_SaveAlbum
(
@Name nvarchar(MAX),
@Artist nvarchar(100)
)
as
begin
	insert into AlbumSet(Name, Artist) values
	(@Name,@Artist)
end

go

create procedure sp_EditAlbum
(
@Id int,
@Name nvarchar(MAX),
@Artist nvarchar(100)
)
as
begin
	update AlbumSet set
	Name = @Name,
	Artist = @Artist
	where Id = @Id
end

go

create procedure sp_DeleteAlbum
(
@Id int
)
as
begin
	delete from AlbumSet where Id = @Id
end

CREATE PROCEDURE GetSongsByAlbumId
    @AlbumId int
AS
BEGIN
    SET NOCOUNT ON;
    -- Obtener las canciones del álbum
    SELECT s.Name AS SongName, s.Id, s.Album_Id
    FROM SongSet s
    WHERE s.Album_Id = @AlbumId;
END;


--=========== Procedimientos almacenados SongSet ============

CREATE PROCEDURE sp_SaveSong
(
    @Name NVARCHAR(MAX),
    @AlbumId INT
)
AS
BEGIN
    INSERT INTO SongSet(Name, Album_Id) 
    VALUES (@Name, @AlbumId);
END;

GO

CREATE PROCEDURE sp_EditSong
(
    @Id INT,
    @Name NVARCHAR(MAX),
    @AlbumId INT
)
AS
BEGIN
    UPDATE SongSet 
    SET Name = @Name, Album_Id = @AlbumId
    WHERE Id = @Id;
END;
GO

CREATE PROCEDURE sp_DeleteSong
(
    @Id INT
)
AS
BEGIN
    DELETE FROM SongSet WHERE Id = @Id;
END;
GO