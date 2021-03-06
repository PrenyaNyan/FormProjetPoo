Create PROCEDURE AfficherNvPerso
as
go
ALTER PROCEDURE AfficherNvPerso
as
Select IDPersonnel,NomPersonnel,PrenomPersonnel,NumeroRue,NomRue,NomVille,NomPays,IDPatron from Pays
inner join
(Select IDPersonnel,NomPersonnel,PrenomPersonnel,NumeroRue,NomRue,NomVille,IDPays,IDPatron from Ville
inner join
(Select IDPersonnel,NomPersonnel,PrenomPersonnel,NumeroRue,NomRue,IDVille,IDPersonnel_AvoirUnPatron as IDPatron from Personnel
inner join Adresse
on Personnel.IDAdresse = Adresse.IDAdresse)Tab1
on Ville.IDVille = Tab1.IDVille)Tab2
on Tab2.IDPays = Pays.IDPays
go
exec AfficherNvPerso