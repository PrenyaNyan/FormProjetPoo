/*Ajouter un Personnel*/
Insert Into Adresse (NumeroRue,NomRue,IDVille) values ('','','');
Insert Into Personnel(NomPersonnel,PrenomPersonnel,DateEmbauchePersonnel,DateDeNaissancePersonnel,IDAdresse,IDPersonnel_AvoirUnPatron) values ('','','','',(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'');
