/*Supprimer un Produit*/
CREATE PROCEDURE DelProduit
AS
GO
ALTER PROCEDURE DelProduit
@IDProduit int
AS
Delete Composer
where IDProduit=@IDProduit;
Delete Taxer
where IDProduit=@IDProduit;
Delete Produit
where IDProduit=@IDProduit;
GO