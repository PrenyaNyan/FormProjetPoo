

select SUM(PrixProduit*StockProduit*(1+TaxeTot)) from Produit
inner join
(Select IDProduit,sum(ValeurTaxe) as TaxeTot from Taxe
inner JOIN Taxer
on Taxe.IDTaxe=Taxer.IDTaxe
GROUP BY IDProduit)Tab1
on Produit.IDProduit=Tab1.IDProduit
