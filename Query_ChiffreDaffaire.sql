SELECT SUM(MontantPaiement) AS Chiffre_d_affaire 
FROM Paiement
WHERE MONTH(DatePaiement) = 6