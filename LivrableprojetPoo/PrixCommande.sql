Select IDcommande,SUM(Prix*(1+TaxeTot)) as PrixCommande from 
(Select IDCommande,Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit)Tab1
 inner join
(Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2
on Tab1.IDProduit=Tab2.IDProduit
group by IDcommande
order by PrixCommande desc