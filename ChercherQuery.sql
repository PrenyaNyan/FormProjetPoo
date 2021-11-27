Select IDPersonnel, NomPersonnel, PrenomPersonnel,DateDeNaissancePersonnel, DateEmbauchePersonnel,NumeroRue,NomRue,NomVille,IDVille,NomPays 
from Pays inner join(Select IDPersonnel, NomPersonnel, PrenomPersonnel, DateDeNaissancePersonnel, DateEmbauchePersonnel, NumeroRue, NomRue, NomVille, Ville.IDVille, IDPays 
from Ville inner join(Select IDPersonnel, NomPersonnel, PrenomPersonnel, DateDeNaissancePersonnel, DateEmbauchePersonnel, NumeroRue, NomRue, IDVille, IDPersonnel_AvoirUnPatron as IDPatron 
from Personnel inner join Adresse on Personnel.IDAdresse = Adresse.IDAdresse)Tab1 on Ville.IDVille = Tab1.IDVille)Tab2 on Tab2.IDPays = Pays.IDPays 
where NomPersonnel like '%%' and  PrenomPersonnel like '%%' and NomRue like '%%' and NomVille like '%%';