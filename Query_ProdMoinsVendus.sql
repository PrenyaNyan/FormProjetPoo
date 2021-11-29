select top(10) NomProduit, count(*) as Nb from Composer 
JOIN  Produit on (Composer.IDProduit = Produit.IDProduit)
group by NomProduit
order by Nb asc