DBCC CHECKIDENT (Adresse, RESEED, 0)
DBCC CHECKIDENT (Personnel, RESEED, 0)
DBCC CHECKIDENT (Pays, RESEED, 0)
DBCC CHECKIDENT (Ville, RESEED, 0)


delete from Personnel
where IDPersonnel > 0;

delete from Adresse
where IDAdresse > 0;

delete from Ville
where IDVille > 0;

delete from Pays
where IDPays > 0;


Insert Into Pays (NomPays) values ('France');
Insert into Ville (NomVille, IDPays) values ('Nantes',1);
Insert into Ville (NomVille, IDPays) values ('Paris',1);

Insert Into Adresse (NomRue, NumeroRue, IDVille) values ('Paradis', '0', '1');
Insert Into Personnel(NomPersonnel,PrenomPersonnel,DateEmbauchePersonnel,DateDeNaissancePersonnel,IDAdresse) values ('Christ','Jesus','1-01-01','1-01-01',(Select top 1 IDAdresse from Adresse order by IDAdresse desc));

