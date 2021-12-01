Create Procedure Chiffre_Affaire_1Mois 
	@DatePaiment date
as
SELECT SUM(MontantPaiement) AS Chiffre_d_affaire 
FROM Paiement
WHERE MONTH(DatePaiement) = month(@DatePaiment) and YEAR(DatePaiement) = Year(@DatePaiment)
GO