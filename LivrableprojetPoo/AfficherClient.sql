/*Afficher un Client*/
CREATE PROCEDURE AfficherClient
as
go
ALTER PROCEDURE AfficherClient
@IDClient int
as
Select * from Client
where IDClient = @IDClient
go
exec AfficherClient 6