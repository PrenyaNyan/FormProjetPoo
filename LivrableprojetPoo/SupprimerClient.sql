/*Supprimer un client*/
create PROCEDURE DelClient
as
go
alter PROCEDURE DelCLient
@IDClientIN INT
as 
DECLARE @InfoCli TABLE(IDClient int,IDAdresse int)
Insert into @InfoCli values ((select IDClient from Habiter where IDClient=@IDClientIN),(select IDAdresse from Habiter where IDClient=@IDClientIN));
Update Commande
set IDClient = NULL
where IDClient in (select IDClient from @InfoCli);

DELETE Habiter
where IDClient in (select IDClient from @InfoCli);

Delete Adresse
where IDAdresse in (select IDAdresse from @InfoCli);

Delete Client
where IDClient in (select IDClient from @InfoCli);
go