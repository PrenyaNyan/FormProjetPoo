drop procedure Seuil_Reaprovisionnenement
go
create procedure Seuil_Reaprovisionnenement
	@value_Reaprovisionnenement int
as
Select IdProduit, NomProduit as Produit_a_Reaprovisionner, StockProduit from Produit
where StockProduit < @value_Reaprovisionnenement
GO