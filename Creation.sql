/*------------------------------------------------------------
*        Script SQLSERVER 
------------------------------------------------------------*/
Drop Table Habiter;
Drop Table Composer;
Drop Table Taxer;
Drop Table Personnel;
Drop Table Adresse;
Drop Table Ville;
Drop Table Pays;
Drop Table Paiement;
Drop Table ModePaiement;
Drop Table Commande;
Drop Table Produit;
Drop Table Client;
Drop Table Taxe;
/*------------------------------------------------------------
-- Table: Client
------------------------------------------------------------*/
CREATE TABLE Client(
	IDClient                INT IDENTITY (1,1) NOT NULL ,
	NomClient               VARCHAR (20) NOT NULL ,
	PrenomClient            VARCHAR (20) NOT NULL ,
	DateDeNaissanceClient   DATE NOT NULL  ,
	CONSTRAINT Client_PK PRIMARY KEY (IDClient)
);
/*------------------------------------------------------------
-- Table: Produit
------------------------------------------------------------*/
CREATE TABLE Produit(
	IDProduit          INT IDENTITY (1,1) NOT NULL ,
	NomProduit         VARCHAR (30) NOT NULL ,
	PrixProduit        MONEY  NOT NULL ,
	StockProduit       INT  NOT NULL  ,
	CONSTRAINT Produit_PK PRIMARY KEY (IDProduit)
);
/*------------------------------------------------------------
-- Table: Commande
------------------------------------------------------------*/
CREATE TABLE Commande(
	IDCommande       INT IDENTITY (1,1) NOT NULL ,
	DateLivraison    DATETIME NOT NULL ,
	DateExpedition   DATETIME NOT NULL ,
	IDClient         INT NULL,
	CONSTRAINT Commande_PK PRIMARY KEY (IDCommande)
);
/*------------------------------------------------------------
-- Table: Taxe
------------------------------------------------------------*/
CREATE TABLE Taxe(
	IDTaxe       INT IDENTITY (1,1) NOT NULL ,
	NomTaxe      VARCHAR (15) NOT NULL ,
	ValeurTaxe   FLOAT  NOT NULL  ,
	CONSTRAINT Taxe_PK PRIMARY KEY (IDTaxe)
);
/*------------------------------------------------------------
-- Table: Pays
------------------------------------------------------------*/
CREATE TABLE Pays(
	IDPays    INT IDENTITY (1,1) NOT NULL ,
	NomPays   VARCHAR (50) NOT NULL  ,
	CONSTRAINT Pays_PK PRIMARY KEY (IDPays)
);
/*------------------------------------------------------------
-- Table: Ville
------------------------------------------------------------*/
CREATE TABLE Ville(
	IDVille    INT IDENTITY (1,1) NOT NULL ,
	NomVille   VARCHAR (55) NOT NULL ,
	IDPays     INT  NOT NULL  ,
	CONSTRAINT Ville_PK PRIMARY KEY (IDVille)
);
/*------------------------------------------------------------
-- Table: Adresse
------------------------------------------------------------*/
CREATE TABLE Adresse(
	IDAdresse   INT IDENTITY (1,1) NOT NULL ,
	NumeroRue   INT  NOT NULL ,
	NomRue      VARCHAR (45) NOT NULL ,
	IDVille     INT  NOT NULL  ,
	CONSTRAINT Adresse_PK PRIMARY KEY (IDAdresse)
);
/*------------------------------------------------------------
-- Table: ModePaiement
------------------------------------------------------------*/
CREATE TABLE ModePaiement(
	IDModePaiement   INT IDENTITY (1,1) NOT NULL ,
	ModePaiement     VARCHAR (15) NOT NULL  ,
	CONSTRAINT ModePaiement_PK PRIMARY KEY (IDModePaiement)
);
/*------------------------------------------------------------
-- Table: Paiement
------------------------------------------------------------*/
CREATE TABLE Paiement(
	IDPaiement        INT IDENTITY (1,1) NOT NULL ,
	DatePaiement      DATETIME NOT NULL ,
	MontantPaiement   MONEY  NOT NULL ,
	IDCommande        INT  NULL ,
	IDModePaiement    INT  NOT NULL  ,
	CONSTRAINT Paiement_PK PRIMARY KEY (IDPaiement)
);
/*------------------------------------------------------------
-- Table: Composer
------------------------------------------------------------*/
CREATE TABLE Composer(
	IDProduit    INT  NOT NULL ,
	IDCommande   INT  NOT NULL ,
	Quantite     INT  NOT NULL  ,
	CONSTRAINT Composer_PK PRIMARY KEY (IDProduit,IDCommande)
);
/*------------------------------------------------------------
-- Table: Habiter
------------------------------------------------------------*/
CREATE TABLE Habiter(
	IDClient      INT  NOT NULL ,
	IDAdresse     INT  NOT NULL ,
	TypeAdresse   CHAR (4)  NOT NULL  ,
	CONSTRAINT Habiter_PK PRIMARY KEY (IDClient,IDAdresse)
);
/*------------------------------------------------------------
-- Table: Taxer
------------------------------------------------------------*/
CREATE TABLE Taxer(
	IDTaxe      INT  NOT NULL ,
	IDProduit   INT  NOT NULL  ,
	CONSTRAINT Taxer_PK PRIMARY KEY (IDTaxe,IDProduit)
);
/*------------------------------------------------------------
-- Table: Personnel
------------------------------------------------------------*/
CREATE TABLE Personnel(
	IDPersonnel                 INT IDENTITY (1,1) NOT NULL ,
	NomPersonnel                VARCHAR (20) NOT NULL ,
	PrenomPersonnel             VARCHAR (20) NOT NULL ,
	DateEmbauchePersonnel       DATETIME NOT NULL ,
	DateDeNaissancePersonnel    DATETIME NOT NULL ,
	IDAdresse                   INT  NOT NULL ,
	IDPersonnel_AvoirUnPatron   INT  NULL,
	CONSTRAINT Personnel_PK PRIMARY KEY (IDPersonnel)
);
ALTER TABLE Commande
	ADD CONSTRAINT Commande_Client0_FK
	FOREIGN KEY (IDClient)
	REFERENCES Client(IDClient);
ALTER TABLE Ville
	ADD CONSTRAINT Ville_Pays0_FK
	FOREIGN KEY (IDPays)
	REFERENCES Pays(IDPays);
ALTER TABLE Adresse
	ADD CONSTRAINT Adresse_Ville0_FK
	FOREIGN KEY (IDVille)
	REFERENCES Ville(IDVille);
ALTER TABLE Paiement
	ADD CONSTRAINT Paiement_Commande0_FK
	FOREIGN KEY (IDCommande)
	REFERENCES Commande(IDCommande);
ALTER TABLE Paiement
	ADD CONSTRAINT Paiement_ModePaiement1_FK
	FOREIGN KEY (IDModePaiement)
	REFERENCES ModePaiement(IDModePaiement);
ALTER TABLE Composer
	ADD CONSTRAINT Composer_Produit0_FK
	FOREIGN KEY (IDProduit)
	REFERENCES Produit(IDProduit);
ALTER TABLE Composer
	ADD CONSTRAINT Composer_Commande1_FK
	FOREIGN KEY (IDCommande)
	REFERENCES Commande(IDCommande);
ALTER TABLE Habiter
	ADD CONSTRAINT Habiter_Client0_FK
	FOREIGN KEY (IDClient)
	REFERENCES Client(IDClient);
ALTER TABLE Habiter
	ADD CONSTRAINT Habiter_Adresse1_FK
	FOREIGN KEY (IDAdresse)
	REFERENCES Adresse(IDAdresse);
ALTER TABLE Taxer
	ADD CONSTRAINT Taxer_Taxe0_FK
	FOREIGN KEY (IDTaxe)
	REFERENCES Taxe(IDTaxe);
ALTER TABLE Taxer
	ADD CONSTRAINT Taxer_Produit1_FK
	FOREIGN KEY (IDProduit)
	REFERENCES Produit(IDProduit);
ALTER TABLE Personnel
	ADD CONSTRAINT Personnel_Adresse0_FK
	FOREIGN KEY (IDAdresse)
	REFERENCES Adresse(IDAdresse);
ALTER TABLE Personnel
	ADD CONSTRAINT Personnel_Personnel1_FK
	FOREIGN KEY (IDPersonnel_AvoirUnPatron)
	REFERENCES Personnel(IDPersonnel);