create procedure PanierMoyen
as
go
alter procedure PanierMoyen as
select avg(Somme) as Panier_Moyen from
(select IDCommande,sum(PrixProduit*Quantite) as Somme
from Produit
inner join Composer on Composer.IDProduit = Produit.IDProduit
group by IDCommande) tab1
GO