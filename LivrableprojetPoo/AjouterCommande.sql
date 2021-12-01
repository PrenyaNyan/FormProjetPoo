Create Procedure AjouterPaiement
as
go
alter PROCEDURE AjouterPaiement
as
Insert into Paiement VALUES ((select top 1 DateExpedition from commande order by IDCommande desc),
(select * from (Select TOP 1 SUM(Prix*(1+TaxeTot)) as PrixCommande from 
(Select IDCommande,Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit where IDcommande=(Select top 1 IDCommande from Commande order by IDcommande desc))Tab1
 inner join
(Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2
on Tab1.IDProduit=Tab2.IDProduit
order by PrixCommande desc)tab1),
(select top 1 IDCommande from Commande order by IDCommande desc),1)
go



/*Ajouter une Commande*/
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-10-2021','12-01-2021',1);
/*Pour chaque article ajouté au panier*/
Insert into Composer (IDCommande,IDProduit,Quantite) values ((Select top 1 IDCommande from Commande order by IDcommande desc),1,6);
Update Produit
set StockProduit = ((Select StockProduit from Produit where IDProduit = 1)-6)
where IDProduit=1;
/*Ajout Paiement*/
exec AjouterPaiement