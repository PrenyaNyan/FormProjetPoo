select IDClient, sum(MontantPaiement) as TotalAchats from Paiement
JOIN Commande on (Paiement.IDCommande = Commande.IDCommande)
where IDClient = 3
Group by IDClient
