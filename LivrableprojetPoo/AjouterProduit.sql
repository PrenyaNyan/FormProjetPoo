/*Creer Un Produit*/
Insert Into Produit (NomProduit,PrixAchatProduit,PrixProduit,StockProduit) values ('','','','');
Insert Into Taxer (IDProduit,IDTaxe) values ((Select top 1 IDProduit from Produit order by IDProduit desc),'');