CREATE PROCEDURE Valeur_Achat_Stock
as
go
alter procedure Valeur_Achat_Stock
as
select sum(PrixAchatProduit*StockProduit) as Valeur_Achat_Stock
from Produit
GO