/*Supprimer une commande*/
create procedure DelCommande
as
go
alter PROCEDURE DelCommande
@IDCommande int
AS
Update Paiement
set IDCommande = NULL
where IDCommande = @IDCommande;
delete Composer
where IDCommande = @IDCommande;
delete Commande
where IDCommande = @IDCommande;
go