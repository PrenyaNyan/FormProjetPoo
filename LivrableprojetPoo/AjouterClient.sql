/* Ajouter un client */
Insert Into Client (NomClient,PrenomClient,DateDeNaissance) values ('','','30/12/2021');
Insert Into Adresse (NumeroRue,NomRue,IDVille) values ('','','');
Insert Into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'');
