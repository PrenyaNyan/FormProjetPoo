CREATE PROCEDURE Montant_Achats_Client
as
go
Alter Procedure Montant_Achats_Client 
	@IDClient int
as
select Achats as TotalAchats from 

(select  sum(MontantPaiement)
as Achats
from Commande
INNER JOIN Paiement on (Commande.IDCommande = Paiement.IDPaiement)
where IDClient = @IDClient)Tab1
GO