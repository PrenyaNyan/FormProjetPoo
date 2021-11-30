delete from Habiter;
delete from Composer;
delete from Taxer;
delete from Personnel;
delete from Adresse;
delete from Ville;
delete from Pays;
delete from Paiement;
delete from ModePaiement;
delete from Commande;
delete from Produit;
delete from Client;
delete from Taxe;
DBCC CHECKIDENT (Pays, RESEED, 0);
DBCC CHECKIDENT (Ville, RESEED, 0);
DBCC CHECKIDENT (Adresse, RESEED, 0);
DBCC CHECKIDENT (Personnel, RESEED, 0);
DBCC CHECKIDENT (Client, RESEED, 0);
DBCC CHECKIDENT (Commande, RESEED, 0);
DBCC CHECKIDENT (Produit, RESEED, 0);
DBCC CHECKIDENT (Taxe, RESEED, 0);
DBCC CHECKIDENT (Paiement, RESEED, 0);
DBCC CHECKIDENT (ModePaiement, RESEED, 0);
Insert into Pays (NomPays) values ('France');
Insert into Pays (NomPays) values ('Royaume-Uni');
Insert into Pays (NomPays) values ('Belgique');
Insert into Pays (NomPays) values ('Espagne');
Insert into Pays (NomPays) values ('Allemagne');
Insert into Ville (NomVille,IDPays) values ('Saint-Nazaire',1);
Insert into Ville (NomVille,IDPays) values ('Nantes',1);
Insert into Ville (NomVille,IDPays) values ('Paris',1);
Insert into Ville (NomVille,IDPays) values ('Guerande',1);
Insert into Ville (NomVille,IDPays) values ('Lyon',1);
Insert into Ville (NomVille,IDPays) values ('Marseille',1);
Insert into Ville (NomVille,IDPays) values ('Lille',1);
Insert into Ville (NomVille,IDPays) values ('Bordeaux',1);
Insert into Ville (NomVille,IDPays) values ('Toulouse',1);
Insert into Ville (NomVille,IDPays) values ('Nice',1);
Insert into Ville (NomVille,IDPays) values ('Madrid',4);
Insert into Ville (NomVille,IDPays) values ('Berlin',5);
Insert into Ville (NomVille,IDPays) values ('Londres',2);
Insert into Ville (NomVille,IDPays) values ('Bruxelles',3);
Insert into Taxe (NomTaxe,ValeurTaxe) values ('TVAn',0.2);
Insert into Taxe (NomTaxe,ValeurTaxe) values ('TVAi',0.1);
Insert into Taxe (NomTaxe,ValeurTaxe) values ('TVAr',0.055);
Insert into Taxe (NomTaxe,ValeurTaxe) values ('TVAp',0.021);
Insert into Taxe (NomTaxe,ValeurTaxe) values ('Import',0.2);
Insert into Modepaiement (ModePaiement) values ('VISA');
Insert into Modepaiement (ModePaiement) values ('Liquide');
Insert into Modepaiement (ModePaiement) values ('Crypto');
Insert into Modepaiement (ModePaiement) values ('Cheque');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (7,'Allee Luya',2);	
Insert into Personnel (NomPersonnel,PrenomPersonnel,DateEmbauchePersonnel,DateDeNaissancePersonnel,IDAdresse,IDPersonnel_AvoirUnPatron) values ('Christ','Jesus','01-01-2000','07-27-1950',(Select top 1 IDAdresse from Adresse order by IDAdresse desc),NULL);
Insert into Adresse (NumeroRue,NomRue,IDVille) values (3,'LaStreet',2);	
Insert into Personnel (NomPersonnel,PrenomPersonnel,DateEmbauchePersonnel,DateDeNaissancePersonnel,IDAdresse,IDPersonnel_AvoirUnPatron) values ('Boss','Hugo','01-01-2000','02-06-1954',(Select top 1 IDAdresse from Adresse order by IDAdresse desc),(Select top 1 IDPersonnel from Personnel order by IDPersonnel desc));
Insert into Adresse (NumeroRue,NomRue,IDVille) values (6,'LaRue',2);	
Insert into Personnel (NomPersonnel,PrenomPersonnel,DateEmbauchePersonnel,DateDeNaissancePersonnel,IDAdresse,IDPersonnel_AvoirUnPatron) values ('Girard','Thomas','09-10-2009','04-12-1968',(Select top 1 IDAdresse from Adresse order by IDAdresse desc),(Select top 1 IDPersonnel from Personnel order by IDPersonnel desc));
Insert into Adresse (NumeroRue,NomRue,IDVille) values (9,'LaVille',2);	
Insert into Personnel (NomPersonnel,PrenomPersonnel,DateEmbauchePersonnel,DateDeNaissancePersonnel,IDAdresse,IDPersonnel_AvoirUnPatron) values ('Lefebvre','Bernard','08-03-2008','06-02-1996',(Select top 1 IDAdresse from Adresse order by IDAdresse desc),(Select top 1 IDPersonnel from Personnel order by IDPersonnel desc));
Insert into Adresse (NumeroRue,NomRue,IDVille) values (7,'LeTierqar',2);	
Insert into Personnel (NomPersonnel,PrenomPersonnel,DateEmbauchePersonnel,DateDeNaissancePersonnel,IDAdresse,IDPersonnel_AvoirUnPatron) values ('Petit','Quentin','03-02-2005','09-05-1972',(Select top 1 IDAdresse from Adresse order by IDAdresse desc),(Select top 1 IDPersonnel from Personnel order by IDPersonnel desc));
Insert into Adresse (NumeroRue,NomRue,IDVille) values (6,'Rue',2);	
Insert into Personnel (NomPersonnel,PrenomPersonnel,DateEmbauchePersonnel,DateDeNaissancePersonnel,IDAdresse,IDPersonnel_AvoirUnPatron) values ('Meyer','Emmanuel','03-30-2008','03-21-1980',(Select top 1 IDAdresse from Adresse order by IDAdresse desc),(Select top 1 IDPersonnel from Personnel order by IDPersonnel desc));
Insert into Adresse (NumeroRue,NomRue,IDVille) values (4,'La Pierre',2);	
Insert into Personnel (NomPersonnel,PrenomPersonnel,DateEmbauchePersonnel,DateDeNaissancePersonnel,IDAdresse,IDPersonnel_AvoirUnPatron) values ('Mercier','Sebastien','03-24-2006','02-27-1969',(Select top 1 IDAdresse from Adresse order by IDAdresse desc),(Select top 1 IDPersonnel from Personnel order by IDPersonnel desc));
Insert into Adresse (NumeroRue,NomRue,IDVille) values (32,'Le paumeau',2);	
Insert into Personnel (NomPersonnel,PrenomPersonnel,DateEmbauchePersonnel,DateDeNaissancePersonnel,IDAdresse,IDPersonnel_AvoirUnPatron) values ('Guerin','Dominique','06-29-2008','01-28-1985',(Select top 1 IDAdresse from Adresse order by IDAdresse desc),(Select top 1 IDPersonnel from Personnel order by IDPersonnel desc));
Insert into Adresse (NumeroRue,NomRue,IDVille) values (11,'La prise',2);	
Insert into Personnel (NomPersonnel,PrenomPersonnel,DateEmbauchePersonnel,DateDeNaissancePersonnel,IDAdresse,IDPersonnel_AvoirUnPatron) values ('Giraud','Didier','04-02-2005','03-04-1983',(Select top 1 IDAdresse from Adresse order by IDAdresse desc),(Select top 1 IDPersonnel from Personnel order by IDPersonnel desc));
Insert into Adresse (NumeroRue,NomRue,IDVille) values (69,'Le Levier',2);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Pereon','Alexandre','06-08-2002');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (15,'La Soif',5);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Matin','Martin','11-10-1969');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (77,'La Fameuse',3);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Troaseumaine','Adam','04-24-1948');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (73,'Gby',4);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Jus','Da','11-04-1909');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (83,'Gissement',1);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Akel','Ebett','04-25-1988');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (50,'Allée LOaime',1);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Oi','Allan','02-16-1961');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (12,'Impasse sanitaire',1);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Di','Amar','10-30-1942');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (72,'Avenuenu Ewillump',3);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Cape','Andy','05-04-1907');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (80,'Boulevard Iselle',5);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Versaire','Annie','06-12-1999');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (82,'Avenue Tella',1);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Javel','Aude','08-29-1933');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (24,'Chemin nez',4);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Hochet','Eric','04-18-1954');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (67,'Passage Aniveau',1);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Rygol','Jean','08-20-1987');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (17,'Ruelle T',4);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Bar','Jo','10-19-1929');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (2,'Descente Ananferre',2);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Fer','Lucie','12-08-1987');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (25,'Rue Pture',4);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Otique','Rob','06-22-1966');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (58,'Route Chouc',2);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Kilo','Sandy','07-14-1911');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Adresse (NumeroRue,NomRue,IDVille) values (85,'Impasse Teur',1);	
Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('Vapabien','Yves','05-16-1922');	
Insert into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'BOTH');
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('MÉMOIRES EPROMS',5.72,627);
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('CIRCUITS LINÉAIRES',4.88,427);
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('CONDENSATEURS',3.58,464);
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('Assortiment de 500 résistances',15,338);
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('Afficheur graphique',7.17,256);
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('Testeur de leds',5.42,547);
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('DIP-SWITCHES',0.67,437);
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('Boite de rangement',2.46,254);
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('Breadboard',7.67,351);
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('ATMega8',37.41,248);
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('MÉMOIRES EPROMS',5.72,627);	
Insert into Taxer (IDProduit,IDTaxe) Values (1,1);	
Insert into Taxer (IDProduit,IDTaxe) Values (1,2);
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('CIRCUITS LINÉAIRES',4.88,270);	
Insert into Taxer (IDProduit,IDTaxe) Values (2,1);	
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('CONDENSATEURS DE DÉMARRAGE',3.58,227);	
Insert into Taxer (IDProduit,IDTaxe) Values (3,1);	
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('Assortiment de 500 résistances',15,522);	
Insert into Taxer (IDProduit,IDTaxe) Values (4,1);	
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('Afficheur graphique',7.17,682);	
Insert into Taxer (IDProduit,IDTaxe) Values (5,1);	
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('Testeur de leds',5.42,643);	
Insert into Taxer (IDProduit,IDTaxe) Values (6,1);	
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('DIP-SWITCHES',0.67,363);	
Insert into Taxer (IDProduit,IDTaxe) Values (7,1);	
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('Boite de rangement',2.46,355);	
Insert into Taxer (IDProduit,IDTaxe) Values (8,1);	
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('Breadboard',7.67,388);	
Insert into Taxer (IDProduit,IDTaxe) Values (9,1);	
Insert into Produit (NomProduit,PrixProduit,StockProduit) values ('ATMega8',37.41,645);	
Insert into Taxer (IDProduit,IDTaxe) Values (10,1);	
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-30-2011','05-29-2011',1);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-14-2020','08-09-2020',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-17-2010','04-12-2010',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-10-2008','04-05-2008',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-10-2017','04-05-2017',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-28-2019','06-23-2019',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-25-2020','05-20-2020',7);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-03-2014','03-29-2014',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-13-2004','01-08-2004',9);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-26-2000','05-21-2000',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-04-2015','11-29-2015',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-07-2007','09-02-2007',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-31-2013','03-26-2013',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-27-2001','09-22-2001',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-03-2010','02-26-2010',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-02-2020','07-28-2020',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-19-2020','09-14-2020',17);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-13-2006','11-08-2006',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-28-2000','01-23-2000',7);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-06-2018','12-01-2018',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-19-2015','11-14-2015',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-07-2020','12-02-2020',9);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-31-2018','12-26-2018',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-02-2016','09-27-2016',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-12-2015','06-11-2015',7);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-23-2010','06-18-2010',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-25-2017','02-20-2017',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-10-2011','10-05-2011',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-11-2017','08-06-2017',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-05-2004','04-30-2004',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-07-2014','04-02-2014',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-28-2004','01-23-2004',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-20-2005','03-15-2005',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-09-2016','10-04-2016',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-11-2004','04-06-2004',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-22-2004','12-17-2004',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-30-2005','07-25-2005',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-10-2009','03-05-2009',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-25-2010','03-20-2010',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-24-2014','07-19-2014',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-23-2008','08-18-2008',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-01-2020','03-27-2020',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-04-2009','02-27-2009',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-22-2014','12-17-2014',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-27-2007','02-22-2007',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-08-2012','02-03-2012',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-30-2002','05-25-2002',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-29-2012','10-24-2012',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-21-2007','03-17-2007',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-23-2004','08-18-2004',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-12-2015','08-07-2015',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-19-2018','03-14-2018',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-28-2006','09-23-2006',7);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-09-2020','05-04-2020',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-16-2015','03-11-2015',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-22-2009','05-17-2009',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-23-2003','06-18-2003',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-04-2020','10-30-2020',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-03-2001','12-29-2000',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-15-2016','10-10-2016',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-08-2020','03-03-2020',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-04-2021','03-30-2021',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-26-2004','04-21-2004',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-10-2002','11-05-2002',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-06-2015','11-01-2015',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-12-2001','11-07-2001',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-13-2018','11-08-2018',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-02-2021','01-28-2021',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-23-2007','03-18-2007',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-17-2010','04-12-2010',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-23-2014','03-18-2014',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-16-2000','03-11-2000',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-24-2007','01-18-2007',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-06-2001','08-01-2001',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-01-2011','11-26-2011',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-18-2002','09-13-2002',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-15-2020','10-10-2020',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-16-2006','06-11-2006',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-23-2006','03-18-2006',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-20-2018','08-15-2018',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-28-2011','07-23-2011',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-18-2008','05-13-2008',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-19-2016','05-14-2016',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-09-2016','11-04-2016',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-09-2003','05-04-2003',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-05-2021','06-30-2021',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-14-2020','06-09-2020',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-09-2018','07-04-2018',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-31-2018','10-26-2018',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-18-2000','08-13-2000',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-10-2002','10-05-2002',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-07-2012','12-02-2012',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-14-2002','07-09-2002',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-23-2005','08-18-2005',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-10-2006','11-05-2006',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-06-2009','10-01-2009',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-03-2021','09-28-2021',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-08-2021','10-03-2021',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-27-2015','03-22-2015',7);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-20-2010','10-15-2010',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-04-2020','04-24-2020',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-06-2009','04-01-2009',1);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-25-2003','02-20-2003',9);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-30-2008','06-25-2008',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-24-2021','02-19-2021',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-21-2007','06-16-2007',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-24-2008','10-19-2008',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-07-2021','04-02-2021',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-24-2017','02-19-2017',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-14-2015','02-09-2015',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-25-2014','02-20-2014',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-03-2006','02-26-2006',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-11-2020','09-06-2020',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-04-2011','02-27-2011',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-14-2016','12-09-2016',17);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-29-2019','12-24-2019',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-04-2001','03-30-2001',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-07-2004','10-02-2004',17);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-07-2006','11-02-2006',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-06-2005','05-01-2005',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-25-2021','01-20-2021',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-16-2006','07-11-2006',7);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-03-2004','11-28-2004',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-01-2005','08-27-2005',1);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-16-2006','03-11-2006',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-04-2011','11-29-2011',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-28-2005','08-23-2005',7);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-21-2004','05-16-2004',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-18-2021','05-13-2021',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-27-2013','11-22-2013',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-22-2015','12-17-2015',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-10-2005','08-05-2005',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-25-2018','12-20-2018',9);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-05-2009','11-30-2009',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-19-2004','11-14-2004',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-16-2010','03-11-2010',1);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-19-2007','02-14-2007',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-13-2012','05-08-2012',1);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-11-2001','06-06-2001',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-26-2018','11-21-2018',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-02-2008','07-28-2008',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-24-2005','09-19-2005',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-06-2003','02-01-2003',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-28-2006','09-23-2006',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-12-2014','05-07-2014',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-26-2018','07-21-2018',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-10-2006','11-05-2006',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-08-2001','02-03-2001',7);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-18-2010','03-13-2010',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-30-2011','05-25-2011',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-25-2007','07-20-2007',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-20-2021','01-15-2021',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-21-2003','02-16-2003',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-25-2005','05-20-2005',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-25-2010','01-20-2010',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-13-2012','10-08-2012',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-08-2017','09-03-2017',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-06-2000','10-01-2000',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-06-2017','12-01-2017',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-28-2003','03-23-2003',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-15-2021','05-10-2021',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-21-2000','04-16-2000',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-12-2016','08-07-2016',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-26-2016','04-21-2016',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-23-2004','05-18-2004',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-22-2003','12-17-2003',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-20-2013','05-15-2013',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-30-2010','04-25-2010',1);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-11-2020','09-06-2020',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-18-2000','06-13-2000',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-27-2011','04-22-2011',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-10-2011','07-05-2011',17);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-29-2021','05-24-2021',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-14-2008','07-09-2008',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-10-2015','09-05-2015',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-19-2007','04-14-2007',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-15-2005','10-10-2005',9);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-24-2014','05-19-2014',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-19-2000','09-14-2000',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-07-2007','02-02-2007',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-25-2015','09-20-2015',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-21-2004','09-16-2004',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-21-2000','10-16-2000',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-02-2004','10-28-2004',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-16-2017','10-11-2017',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-18-2013','09-13-2013',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-21-2019','10-16-2019',7);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-08-2015','02-03-2015',1);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-09-2001','06-04-2001',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-02-2009','12-28-2008',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-20-2010','01-15-2010',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-10-2008','01-05-2008',1);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-08-2009','05-03-2009',17);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-23-2005','06-18-2005',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-21-2016','10-16-2016',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-07-2003','07-02-2003',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-04-2000','03-30-2000',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-28-2006','04-23-2006',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-25-2003','11-20-2003',1);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-08-2020','12-03-2020',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-12-2005','06-07-2005',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-17-2004','10-12-2004',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-27-2021','06-22-2021',9);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-28-2007','01-23-2007',17);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-20-2001','06-15-2001',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-28-2010','12-23-2010',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-24-2009','08-19-2009',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-14-2018','09-09-2018',9);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-22-2005','09-17-2005',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-29-2010','01-24-2010',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-15-2020','07-10-2020',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-23-2017','10-18-2017',9);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-11-2015','02-06-2015',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-21-2019','11-16-2019',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-19-2015','03-14-2015',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-05-2021','09-30-2021',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-27-2021','02-22-2021',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-07-2018','03-02-2018',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-15-2016','12-10-2016',1);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-13-2006','07-08-2006',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-13-2002','10-08-2002',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-19-2007','09-14-2007',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-11-2006','10-06-2006',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-08-2013','05-03-2013',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-19-2004','07-14-2004',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-29-2008','01-24-2008',9);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-03-2006','07-29-2006',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-08-2012','07-03-2012',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-18-2009','09-13-2009',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-20-2003','11-15-2003',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-02-2013','03-28-2013',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-29-2020','02-24-2020',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-19-2002','07-14-2002',9);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-14-2013','08-09-2013',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-03-2021','03-29-2021',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-10-2014','04-05-2014',7);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-23-2007','01-18-2007',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-29-2021','10-24-2021',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-12-2005','10-07-2005',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-24-2006','01-19-2006',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-04-2004','10-30-2004',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-14-2000','06-09-2000',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-24-2013','03-19-2013',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-24-2017','05-19-2017',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-18-2015','03-13-2015',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-15-2012','09-10-2012',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-26-2015','02-21-2015',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-06-2008','12-01-2008',1);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-30-2015','03-25-2015',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-30-2013','01-25-2013',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-09-2014','08-04-2014',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-26-2007','05-21-2007',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-13-2007','11-08-2007',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-11-2019','04-06-2019',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-18-2003','11-13-2003',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-12-2013','12-07-2013',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-20-2016','03-15-2016',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-21-2000','02-16-2000',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-15-2002','04-10-2002',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-04-2011','09-29-2011',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-19-2019','11-14-2019',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-22-2006','10-17-2006',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-17-2019','03-12-2019',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-27-2003','07-22-2003',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-13-2019','08-08-2019',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-19-2009','10-14-2009',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-27-2010','05-22-2010',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-07-2009','11-02-2009',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-20-2011','12-15-2011',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-29-2004','03-24-2004',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-18-2005','07-13-2005',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-20-2002','10-15-2002',1);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-10-2019','05-05-2019',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-21-2017','04-16-2017',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-30-2005','10-25-2005',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-18-2013','12-13-2013',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-01-2014','09-26-2014',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-29-2007','07-24-2007',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-14-2020','04-09-2020',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-26-2020','06-21-2020',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-19-2007','10-14-2007',17);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-09-2016','06-04-2016',7);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-07-2002','11-02-2002',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-09-2011','09-04-2011',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-28-2021','08-23-2021',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-06-2015','11-01-2015',7);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-27-2008','08-22-2008',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-24-2011','08-19-2011',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-16-2009','11-11-2009',9);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-10-2017','09-05-2017',7);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-07-2021','04-02-2021',1);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-08-2021','06-03-2021',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-28-2018','04-23-2018',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-02-2008','11-27-2008',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-15-2014','02-10-2014',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-17-2017','10-12-2017',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-11-2008','04-06-2008',17);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-06-2013','03-01-2013',9);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-08-2007','04-03-2007',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-25-2000','06-20-2000',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-03-2000','02-27-2000',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-30-2012','07-25-2012',9);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-23-2014','12-18-2014',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-21-2017','01-16-2017',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-11-2020','01-06-2020',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-26-2000','06-21-2000',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-17-2003','05-12-2003',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-02-2010','02-25-2010',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-02-2005','12-28-2004',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-14-2001','08-09-2001',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-15-2016','03-10-2016',17);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-29-2016','06-24-2016',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-18-2019','01-13-2019',1);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-02-2009','06-27-2009',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-08-2000','06-03-2000',7);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-15-2008','12-10-2008',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-23-2009','08-18-2009',1);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-27-2000','06-22-2000',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-06-2009','10-01-2009',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-17-2019','12-12-2019',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-02-2014','12-28-2013',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-15-2021','06-10-2021',7);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-23-2008','06-18-2008',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-15-2009','04-10-2009',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-09-2001','06-04-2001',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-17-2019','01-12-2019',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-03-2007','04-28-2007',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-03-2015','04-28-2015',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-13-2011','12-08-2011',17);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-15-2009','06-10-2009',9);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-31-2002','05-26-2002',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-26-2010','09-21-2010',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-12-2001','01-07-2001',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-24-2011','01-19-2011',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-27-2012','07-22-2012',9);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-26-2004','01-21-2004',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-28-2020','08-23-2020',10);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-13-2014','01-08-2014',15);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('04-19-2019','04-14-2019',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-20-2021','01-15-2021',12);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('05-23-2019','05-18-2019',9);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-16-2001','01-11-2001',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-27-2017','03-22-2017',2);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('12-14-2009','12-09-2009',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('11-30-2013','11-25-2013',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-15-2016','07-10-2016',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-26-2005','03-21-2005',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-13-2001','09-08-2001',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-01-2013','01-27-2013',1);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('01-15-2013','01-10-2013',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('06-27-2021','06-22-2021',11);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-29-2006','08-24-2006',13);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-08-2019','02-03-2019',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-16-2015','03-11-2015',4);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-12-2004','03-07-2004',17);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-29-2009','10-24-2009',6);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('09-04-2007','08-30-2007',3);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-14-2006','10-09-2006',16);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('10-14-2000','10-09-2000',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('07-21-2010','07-16-2010',5);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('02-27-2000','02-22-2000',8);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('03-06-2014','03-01-2014',14);
Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('08-20-2000','08-15-2000',11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,1,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,2,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,3,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,4,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,5,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,6,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,7,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,8,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,9,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,10,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,11,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,12,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,13,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,14,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,15,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,16,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,17,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,18,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,19,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,20,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,21,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,22,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,23,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,24,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,25,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,26,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,27,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,28,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,29,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,30,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,31,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,32,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,33,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,34,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,35,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,36,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,37,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,38,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,39,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,40,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,41,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,42,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,43,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,44,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,45,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,46,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,47,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,48,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,49,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,50,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,51,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,52,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,53,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,54,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,55,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,56,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,57,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,58,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,59,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,60,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,61,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,62,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,63,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,64,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,65,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,66,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,67,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,68,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,69,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,70,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,71,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,72,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,73,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,74,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,75,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,76,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,77,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,78,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,79,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,80,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,81,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,82,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,83,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,84,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,85,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,86,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,87,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,88,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,89,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,90,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,91,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,92,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,93,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,94,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,95,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,96,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,97,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,98,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,99,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,100,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,101,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,102,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,103,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,104,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,105,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,106,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,107,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,108,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,109,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,110,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,111,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,112,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,113,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,114,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,115,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,116,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,117,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,118,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,119,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,120,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,121,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,122,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,123,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,124,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,125,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,126,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,127,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,128,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,129,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,130,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,131,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,132,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,133,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,134,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,135,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,136,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,137,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,138,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,139,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,140,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,141,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,142,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,143,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,144,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,145,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,146,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,147,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,148,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,149,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,150,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,151,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,152,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,153,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,154,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,155,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,156,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,157,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,158,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,159,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,160,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,161,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,162,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,163,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,164,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,165,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,166,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,167,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,168,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,169,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,170,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,171,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,172,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,173,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,174,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,175,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,176,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,177,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,178,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,179,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,180,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,181,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,182,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,183,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,184,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,185,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,186,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,187,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,188,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,189,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,190,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,191,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,192,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,193,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,194,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,195,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,196,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,197,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,198,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,199,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,200,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,201,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,202,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,203,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,204,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,205,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,206,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,207,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,208,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,209,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,210,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,211,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,212,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,213,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,214,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,215,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,216,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,217,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,218,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,219,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,220,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,221,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,222,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,223,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,224,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,225,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,226,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,227,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,228,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,229,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,230,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,231,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,232,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,233,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,234,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,235,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,236,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,237,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,238,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,239,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,240,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,241,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,242,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,243,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,244,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,245,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,246,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,247,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,248,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,249,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,250,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,251,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,252,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,253,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,254,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,255,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,256,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,257,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,258,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,259,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,260,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,261,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,262,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,263,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,264,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,265,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,266,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,267,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,268,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,269,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,270,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,271,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,272,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,273,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,274,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,275,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,276,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,277,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,278,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,279,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,280,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,281,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,282,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,283,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,284,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,285,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,286,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,287,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,288,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,289,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,290,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,291,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,292,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,293,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,294,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,295,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,296,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,297,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,298,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,299,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,300,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,301,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,302,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,303,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,304,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,305,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,306,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,307,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,308,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,309,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,310,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,311,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,312,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,313,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,314,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,315,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,316,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,317,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,318,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,319,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,320,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,321,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,322,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,323,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,324,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,325,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,326,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,327,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,328,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,329,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,330,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,331,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,332,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,333,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,334,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,335,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,336,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,337,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,338,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,339,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,340,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,341,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,342,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,343,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,344,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,345,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,346,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,347,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,348,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,349,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,350,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,351,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,352,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,353,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,354,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,355,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,356,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,357,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,358,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,359,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,360,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,361,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,362,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,363,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,138,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,337,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,272,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,284,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,21,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,225,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,150,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,36,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,131,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,197,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,151,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,212,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,25,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,51,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,72,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,139,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,64,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,295,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,179,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,175,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,145,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,5,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,37,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,267,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,38,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,244,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,342,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,292,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,31,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,215,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,245,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,11,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,281,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,137,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,99,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,111,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,349,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,16,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,119,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,346,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,6,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,237,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,13,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,354,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,12,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,239,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,219,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,291,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,26,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,192,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,166,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,90,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,230,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,239,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,30,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,174,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,18,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,17,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,159,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,35,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,254,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,190,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,248,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,244,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,63,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,5,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,61,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,133,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,31,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,322,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,98,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,60,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,76,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,263,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,174,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,59,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,208,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,250,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,280,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,32,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,341,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,317,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,104,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,352,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,261,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,65,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,169,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,33,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,97,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,199,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,200,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,180,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,344,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,42,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,338,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,138,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,34,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,270,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,137,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,50,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,52,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,129,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,152,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,286,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,313,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,277,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,305,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,154,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,52,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,193,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,218,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,126,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,291,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,308,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,13,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,184,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,196,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,22,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,213,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,303,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,167,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,58,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,219,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,212,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,245,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,30,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,56,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,360,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,98,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,3,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,143,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,16,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,300,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,9,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,219,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,214,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,323,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,263,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,273,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,21,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,56,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,314,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,362,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,217,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,131,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,112,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,84,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,203,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,150,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,120,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,249,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,333,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,362,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,148,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,274,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,185,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,234,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,151,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,133,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,156,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,103,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,189,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,152,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,86,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,101,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,200,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,362,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,156,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,88,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,60,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,269,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,306,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,273,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,106,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,351,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,175,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,54,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,56,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,352,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,255,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,176,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,218,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,61,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,151,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,362,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,265,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,12,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,346,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,120,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,147,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,237,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,206,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,93,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,53,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,86,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,52,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,90,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,29,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,252,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,96,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,160,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,256,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,191,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,54,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,83,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,358,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,171,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,259,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,57,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,9,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,307,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,96,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,339,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,331,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,197,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,22,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,240,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,211,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,36,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,21,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,215,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,210,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,36,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,142,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,69,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,75,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,49,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,235,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,125,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,362,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,73,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,352,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,146,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,298,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,83,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,256,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,354,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,115,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,231,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,133,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,190,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,46,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,2,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,4,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,198,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,344,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,40,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,232,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,228,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,303,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,168,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,14,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,350,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,339,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,342,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,75,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,66,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,324,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,336,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,28,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,330,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,229,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,29,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,98,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,36,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,54,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,39,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,146,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,25,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,212,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,228,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,273,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,218,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,137,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,168,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,154,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,191,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,263,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,91,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,225,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,135,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,228,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,269,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,262,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,91,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,350,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,14,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,295,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,210,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,223,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,334,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,269,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,310,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,224,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,361,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,336,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,162,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,190,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,279,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,50,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,77,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,329,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,341,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,306,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,94,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,214,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,136,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,243,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,51,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,193,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,144,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,220,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,123,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,363,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,193,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,192,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,74,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,110,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,353,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,42,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,182,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,260,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,243,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,198,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,265,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,159,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,34,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,155,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,270,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,76,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,174,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,61,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,125,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,318,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,113,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,240,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,126,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,283,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,260,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,244,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,337,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,309,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,61,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,359,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,255,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,276,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,39,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,94,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,199,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,257,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,36,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,231,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,12,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,319,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,119,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,351,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,258,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,191,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,312,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,176,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,357,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,157,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,138,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,258,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,132,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,178,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,121,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,144,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,144,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,235,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,161,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,172,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,266,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,34,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,110,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,59,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,180,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,272,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,256,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,249,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,344,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,329,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,268,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,350,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,257,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,44,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,9,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,9,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,313,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,301,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,92,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,24,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,253,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,184,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,12,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,281,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,183,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,252,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,351,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,65,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,296,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,63,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,173,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,54,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,111,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,3,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,171,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,83,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,199,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,140,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,248,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,150,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,99,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,362,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,187,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,285,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,88,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,321,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,283,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,276,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,232,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,272,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,307,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,43,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,87,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,72,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,141,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,7,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,156,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,112,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,100,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,68,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,189,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,306,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,195,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,267,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,153,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,353,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,15,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,263,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,355,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,342,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,29,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,201,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,38,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,191,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,113,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,21,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,8,11);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,328,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,42,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,330,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,82,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,98,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,349,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,311,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,324,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,106,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,347,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,102,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,17,6);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,268,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,83,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (6,196,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,289,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,92,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,334,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,159,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,67,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (10,358,3);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (9,314,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,19,5);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (4,131,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,92,2);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (8,111,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (1,257,1);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (2,128,9);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,299,12);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,22,7);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (5,188,8);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,119,4);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (7,7,10);
Insert into Composer (IDProduit,IDCommande,Quantite) Values (3,363,5);

Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=1),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 1)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),1,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=2),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 2)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),2,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=3),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 3)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),3,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=4),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 4)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),4,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=5),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 5)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),5,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=6),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 6)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),6,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=7),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 7)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),7,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=8),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 8)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),8,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=9),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 9)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),9,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=10),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 10)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),10,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=11),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 11)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),11,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=12),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 12)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),12,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=13),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 13)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),13,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=14),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 14)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),14,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=15),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 15)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),15,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=16),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 16)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),16,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=17),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 17)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),17,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=18),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 18)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),18,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=19),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 19)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),19,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=20),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 20)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),20,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=21),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 21)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),21,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=22),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 22)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),22,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=23),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 23)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),23,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=24),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 24)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),24,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=25),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 25)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),25,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=26),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 26)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),26,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=27),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 27)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),27,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=28),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 28)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),28,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=29),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 29)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),29,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=30),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 30)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),30,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=31),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 31)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),31,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=32),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 32)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),32,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=33),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 33)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),33,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=34),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 34)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),34,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=35),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 35)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),35,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=36),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 36)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),36,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=37),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 37)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),37,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=38),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 38)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),38,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=39),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 39)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),39,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=40),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 40)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),40,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=41),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 41)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),41,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=42),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 42)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),42,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=43),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 43)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),43,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=44),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 44)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),44,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=45),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 45)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),45,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=46),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 46)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),46,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=47),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 47)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),47,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=48),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 48)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),48,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=49),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 49)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),49,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=50),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 50)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),50,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=51),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 51)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),51,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=52),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 52)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),52,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=53),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 53)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),53,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=54),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 54)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),54,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=55),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 55)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),55,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=56),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 56)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),56,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=57),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 57)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),57,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=58),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 58)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),58,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=59),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 59)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),59,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=60),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 60)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),60,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=61),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 61)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),61,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=62),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 62)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),62,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=63),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 63)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),63,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=64),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 64)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),64,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=65),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 65)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),65,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=66),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 66)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),66,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=67),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 67)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),67,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=68),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 68)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),68,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=69),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 69)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),69,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=70),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 70)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),70,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=71),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 71)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),71,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=72),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 72)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),72,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=73),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 73)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),73,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=74),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 74)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),74,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=75),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 75)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),75,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=76),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 76)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),76,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=77),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 77)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),77,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=78),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 78)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),78,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=79),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 79)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),79,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=80),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 80)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),80,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=81),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 81)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),81,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=82),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 82)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),82,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=83),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 83)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),83,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=84),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 84)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),84,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=85),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 85)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),85,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=86),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 86)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),86,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=87),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 87)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),87,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=88),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 88)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),88,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=89),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 89)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),89,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=90),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 90)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),90,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=91),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 91)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),91,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=92),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 92)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),92,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=93),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 93)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),93,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=94),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 94)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),94,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=95),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 95)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),95,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=96),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 96)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),96,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=97),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 97)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),97,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=98),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 98)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),98,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=99),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 99)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),99,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=100),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 100)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),100,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=101),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 101)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),101,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=102),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 102)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),102,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=103),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 103)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),103,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=104),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 104)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),104,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=105),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 105)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),105,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=106),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 106)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),106,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=107),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 107)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),107,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=108),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 108)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),108,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=109),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 109)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),109,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=110),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 110)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),110,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=111),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 111)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),111,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=112),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 112)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),112,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=113),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 113)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),113,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=114),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 114)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),114,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=115),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 115)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),115,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=116),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 116)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),116,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=117),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 117)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),117,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=118),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 118)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),118,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=119),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 119)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),119,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=120),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 120)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),120,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=121),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 121)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),121,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=122),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 122)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),122,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=123),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 123)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),123,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=124),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 124)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),124,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=125),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 125)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),125,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=126),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 126)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),126,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=127),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 127)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),127,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=128),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 128)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),128,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=129),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 129)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),129,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=130),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 130)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),130,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=131),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 131)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),131,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=132),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 132)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),132,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=133),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 133)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),133,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=134),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 134)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),134,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=135),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 135)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),135,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=136),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 136)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),136,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=137),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 137)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),137,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=138),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 138)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),138,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=139),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 139)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),139,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=140),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 140)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),140,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=141),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 141)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),141,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=142),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 142)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),142,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=143),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 143)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),143,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=144),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 144)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),144,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=145),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 145)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),145,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=146),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 146)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),146,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=147),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 147)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),147,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=148),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 148)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),148,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=149),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 149)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),149,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=150),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 150)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),150,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=151),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 151)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),151,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=152),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 152)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),152,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=153),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 153)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),153,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=154),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 154)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),154,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=155),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 155)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),155,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=156),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 156)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),156,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=157),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 157)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),157,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=158),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 158)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),158,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=159),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 159)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),159,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=160),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 160)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),160,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=161),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 161)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),161,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=162),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 162)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),162,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=163),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 163)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),163,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=164),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 164)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),164,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=165),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 165)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),165,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=166),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 166)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),166,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=167),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 167)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),167,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=168),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 168)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),168,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=169),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 169)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),169,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=170),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 170)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),170,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=171),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 171)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),171,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=172),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 172)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),172,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=173),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 173)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),173,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=174),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 174)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),174,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=175),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 175)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),175,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=176),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 176)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),176,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=177),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 177)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),177,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=178),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 178)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),178,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=179),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 179)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),179,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=180),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 180)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),180,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=181),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 181)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),181,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=182),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 182)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),182,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=183),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 183)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),183,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=184),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 184)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),184,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=185),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 185)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),185,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=186),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 186)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),186,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=187),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 187)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),187,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=188),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 188)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),188,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=189),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 189)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),189,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=190),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 190)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),190,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=191),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 191)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),191,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=192),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 192)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),192,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=193),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 193)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),193,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=194),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 194)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),194,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=195),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 195)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),195,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=196),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 196)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),196,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=197),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 197)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),197,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=198),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 198)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),198,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=199),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 199)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),199,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=200),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 200)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),200,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=201),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 201)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),201,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=202),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 202)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),202,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=203),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 203)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),203,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=204),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 204)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),204,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=205),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 205)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),205,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=206),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 206)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),206,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=207),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 207)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),207,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=208),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 208)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),208,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=209),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 209)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),209,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=210),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 210)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),210,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=211),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 211)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),211,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=212),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 212)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),212,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=213),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 213)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),213,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=214),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 214)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),214,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=215),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 215)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),215,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=216),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 216)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),216,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=217),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 217)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),217,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=218),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 218)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),218,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=219),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 219)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),219,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=220),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 220)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),220,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=221),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 221)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),221,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=222),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 222)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),222,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=223),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 223)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),223,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=224),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 224)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),224,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=225),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 225)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),225,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=226),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 226)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),226,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=227),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 227)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),227,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=228),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 228)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),228,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=229),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 229)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),229,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=230),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 230)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),230,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=231),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 231)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),231,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=232),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 232)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),232,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=233),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 233)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),233,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=234),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 234)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),234,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=235),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 235)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),235,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=236),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 236)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),236,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=237),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 237)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),237,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=238),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 238)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),238,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=239),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 239)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),239,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=240),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 240)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),240,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=241),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 241)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),241,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=242),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 242)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),242,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=243),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 243)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),243,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=244),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 244)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),244,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=245),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 245)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),245,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=246),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 246)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),246,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=247),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 247)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),247,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=248),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 248)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),248,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=249),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 249)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),249,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=250),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 250)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),250,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=251),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 251)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),251,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=252),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 252)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),252,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=253),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 253)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),253,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=254),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 254)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),254,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=255),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 255)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),255,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=256),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 256)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),256,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=257),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 257)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),257,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=258),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 258)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),258,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=259),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 259)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),259,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=260),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 260)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),260,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=261),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 261)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),261,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=262),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 262)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),262,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=263),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 263)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),263,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=264),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 264)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),264,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=265),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 265)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),265,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=266),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 266)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),266,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=267),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 267)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),267,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=268),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 268)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),268,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=269),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 269)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),269,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=270),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 270)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),270,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=271),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 271)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),271,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=272),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 272)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),272,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=273),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 273)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),273,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=274),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 274)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),274,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=275),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 275)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),275,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=276),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 276)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),276,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=277),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 277)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),277,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=278),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 278)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),278,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=279),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 279)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),279,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=280),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 280)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),280,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=281),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 281)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),281,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=282),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 282)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),282,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=283),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 283)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),283,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=284),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 284)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),284,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=285),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 285)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),285,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=286),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 286)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),286,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=287),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 287)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),287,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=288),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 288)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),288,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=289),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 289)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),289,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=290),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 290)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),290,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=291),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 291)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),291,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=292),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 292)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),292,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=293),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 293)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),293,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=294),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 294)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),294,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=295),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 295)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),295,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=296),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 296)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),296,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=297),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 297)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),297,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=298),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 298)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),298,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=299),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 299)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),299,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=300),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 300)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),300,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=301),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 301)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),301,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=302),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 302)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),302,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=303),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 303)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),303,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=304),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 304)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),304,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=305),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 305)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),305,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=306),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 306)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),306,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=307),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 307)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),307,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=308),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 308)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),308,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=309),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 309)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),309,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=310),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 310)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),310,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=311),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 311)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),311,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=312),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 312)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),312,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=313),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 313)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),313,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=314),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 314)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),314,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=315),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 315)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),315,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=316),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 316)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),316,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=317),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 317)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),317,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=318),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 318)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),318,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=319),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 319)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),319,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=320),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 320)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),320,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=321),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 321)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),321,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=322),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 322)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),322,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=323),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 323)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),323,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=324),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 324)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),324,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=325),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 325)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),325,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=326),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 326)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),326,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=327),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 327)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),327,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=328),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 328)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),328,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=329),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 329)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),329,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=330),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 330)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),330,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=331),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 331)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),331,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=332),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 332)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),332,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=333),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 333)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),333,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=334),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 334)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),334,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=335),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 335)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),335,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=336),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 336)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),336,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=337),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 337)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),337,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=338),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 338)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),338,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=339),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 339)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),339,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=340),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 340)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),340,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=341),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 341)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),341,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=342),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 342)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),342,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=343),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 343)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),343,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=344),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 344)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),344,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=345),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 345)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),345,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=346),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 346)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),346,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=347),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 347)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),347,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=348),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 348)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),348,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=349),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 349)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),349,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=350),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 350)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),350,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=351),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 351)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),351,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=352),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 352)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),352,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=353),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 353)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),353,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=354),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 354)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),354,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=355),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 355)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),355,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=356),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 356)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),356,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=357),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 357)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),357,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=358),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 358)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),358,4)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=359),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 359)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),359,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=360),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 360)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),360,2)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=361),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 361)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),361,3)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=362),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 362)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),362,1)
Insert into Paiement (DatePaiement,MontantPaiement,IDCommande,IDModePaiement) values ((select DateExpedition from Commande where IDCommande=363),(Select SUM(Prix*(1+TaxeTot)) as PrixCommande from (Select Composer.IDProduit,PrixProduit*Quantite as Prix from Composer inner join Produit on Composer.IDProduit = Produit.IDProduit  where IDCommande = 363)Tab1  inner join (Select IDProduit,sum(ValeurTaxe)as TaxeTot from Taxer inner join Taxe on Taxer.IDTaxe=Taxe.IDTaxe group by IDProduit)Tab2 on Tab1.IDProduit=Tab2.IDProduit),363,2)
