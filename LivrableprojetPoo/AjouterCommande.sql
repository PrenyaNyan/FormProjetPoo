/*Ajouter une Commande*/
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('','','');
/*Pour chaque article ajouté au panier*/
Insert into Composer (IDCommande,IDProduit,Quantite) values ((Select top 1 IDCommande from Commande order by IDcommande desc),'','');
Update Produit
set StockProduit = ((Select StockProduit from Produit where IDProduit = '')-'')
where IDProduit='';