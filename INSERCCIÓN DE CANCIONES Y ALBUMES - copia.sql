USE MUSICRADIODB
GO

-- Insertar datos en la tabla AlbumSet
INSERT INTO AlbumSet (Name, Artist) VALUES ('Zen Arcade', 'Husker DU');
INSERT INTO AlbumSet (Name, Artist) VALUES ('Loveless', 'My Bloody Valentine');
INSERT INTO AlbumSet (Name, Artist) VALUES ('Velvet Underground and Nico', 'The Velvet Underground');

-- Insertar datos en la tabla SongSet
-- Canciones para el álbum 'Zen Arcade' de Husker DU
INSERT INTO SongSet (Name, Album_Id) 
VALUES ('Something I Learned Today', (SELECT Id FROM AlbumSet WHERE Name = 'Zen Arcade'));

INSERT INTO SongSet (Name, Album_Id) 
VALUES ('Broken Home, Broken Heart', (SELECT Id FROM AlbumSet WHERE Name = 'Zen Arcade'));

INSERT INTO SongSet (Name, Album_Id) 
VALUES ('Never Talking to You Again', (SELECT Id FROM AlbumSet WHERE Name = 'Zen Arcade'));

-- Canciones para el álbum 'Loveless' de My Bloody Valentine
INSERT INTO SongSet (Name, Album_Id) 
VALUES ('Only Shallow', (SELECT Id FROM AlbumSet WHERE Name = 'Loveless'));

INSERT INTO SongSet (Name, Album_Id) 
VALUES ('Loomer', (SELECT Id FROM AlbumSet WHERE Name = 'Loveless'));

INSERT INTO SongSet (Name, Album_Id) 
VALUES ('To Here Knows When', (SELECT Id FROM AlbumSet WHERE Name = 'Loveless'));

-- Canciones para el álbum 'Velvet Underground and Nico' de The Velvet Underground
INSERT INTO SongSet (Name, Album_Id) 
VALUES ('Sunday Morning', (SELECT Id FROM AlbumSet WHERE Name = 'Velvet Underground and Nico'));

INSERT INTO SongSet (Name, Album_Id) 
VALUES ('I''m Waiting for the Man', (SELECT Id FROM AlbumSet WHERE Name = 'Velvet Underground and Nico'));

INSERT INTO SongSet (Name, Album_Id) 
VALUES ('Femme Fatale', (SELECT Id FROM AlbumSet WHERE Name = 'Velvet Underground and Nico'));
