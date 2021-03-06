CREATE PROCEDURE SimulVariation

AS

GO

ALTER PROCEDURE SimulVariation
@Valeur1 FLOAT,
@Valeur2 FLOAT,
@Valeur3 FLOAT,
@Valeur4 FLOAT,
@Valeur5 FLOAT,
@Valeur6 FLOAT,
@Valeur7 FLOAT,
@Valeur8 FLOAT
AS
declare @Simulation TABLE (IDTaxe int Identity,Valeur float);
Insert into @Simulation values (@Valeur1),(@Valeur2),(@Valeur3),(@Valeur4),(@Valeur5);

select SUM((PrixProduit*(1-@Valeur7))*StockProduit*(1+@Valeur6+TaxeTot)*(1-@Valeur8)) as SimulationValeurMarchande from Produit
inner join

(Select IDProduit,sum(Valeur) as TaxeTot from @Simulation
inner JOIN Taxer
on [@Simulation].IDTaxe=Taxer.IDTaxe
GROUP BY IDProduit)Tab1

on Produit.IDProduit=Tab1.IDProduit

GO
/*TVAn,TVAi,TVAr,TVAp,Import,MargeCom,RemiseCom,Demarque*/
exec SimulVariation 0.2, 0.1, 0.055, 0.021, 0.2, 0, 0, 0
select * from Taxe
