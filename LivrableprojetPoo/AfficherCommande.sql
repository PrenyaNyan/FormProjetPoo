/*Afficher des commandes*/
/*Afficher les commandes d'un client*/
--Select * from Commande 
--where IDClient = 5;
/*Afficher le détail d'une commande*/
Select  IDClient,IDCommande,NomProduit,Quantite,PrixProduit,DateLivraison from Produit
inner join
(Select IDClient,Commande.IDCommande,DateLivraison,IDProduit,Quantite from Commande
inner join Composer
on Commande.IDCommande=Composer.IDCommande
where Commande.IDClient=5)Tab1 /*On rentre l'id de la commande ici*/
on Tab1.IDProduit = Produit.IDProduit;
select * from Produit;