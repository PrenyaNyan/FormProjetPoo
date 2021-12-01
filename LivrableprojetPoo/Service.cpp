#include "pch.h"
#include "Service.h"

NS_Comp_Svc::Service::Service(void)
{
	this->oCad = gcnew NS_Comp_Data::CAD();
	this->oMappPersonnel = gcnew NS_Comp_Mappage::Personnel();
	this->oMappAdresse = gcnew NS_Comp_Mappage::Adresse();
	this->oMappClient = gcnew NS_Comp_Mappage::Client();
	this->oMappHabiter = gcnew NS_Comp_Mappage::Habiter();
	this->oMappProduit = gcnew NS_Comp_Mappage::Produit();


}
System::Data::DataSet^ NS_Comp_Svc::Service::selectionnerToutLePersonnel(System::String^ dataTableName)
{
	System::String^ sql;

	sql = this->oMappPersonnel->Select();
	return this->oCad->getRows(sql, dataTableName);
}
System::Data::DataSet^ NS_Comp_Svc::Service::selectionnerToutLesClients(System::String^ dataTableName)
{
	System::String^ sql;

	sql = this->oMappClient->Select();
	return this->oCad->getRows(sql, dataTableName);
}
System::Data::DataSet^ NS_Comp_Svc::Service::selectionnerArticle(System::String^ dataTableName)
{
	System::String^ sql;

	sql = this->oMappCommande->Select();
	return this->oCad->getRows(sql, dataTableName);
}

System::Data::DataSet^ NS_Comp_Svc::Service::selectionnerUnPersonnel(System::String^ IDPersonnel ,System::String^ dataTableName)
{
	System::String^ sql;
	this->oMappPersonnel->setID(int::Parse(IDPersonnel));
	sql = this->oMappPersonnel->SelectOne();
	return this->oCad->getRows(sql, dataTableName);
}
System::Data::DataSet^ NS_Comp_Svc::Service::selectionnerUnClient(System::String^ IDPersonnel, System::String^ dataTableName)
{
	System::String^ sql;
	this->oMappClient->setID(int::Parse(IDPersonnel));
	sql = this->oMappClient->SelectOne();
	return this->oCad->getRows(sql, dataTableName);
}
System::Data::DataSet^ NS_Comp_Svc::Service::selectionnerConditionPersonnel(System::String^ Nom, System::String^ Prenom, System::String^ NomRue, System::String^ NomVille, System::String^ dataTableName)
{
	System::String^ sql;
	sql = this->oMappPersonnel->SelectConditionPersonnel(Nom, Prenom, NomRue, NomVille);
	return this->oCad->getRows(sql, dataTableName);
}
System::Data::DataSet^ NS_Comp_Svc::Service::selectionnerConditionClient(System::String^ Nom, System::String^ Prenom, System::String^ NomRue, System::String^ NomVille, System::String^ dataTableName)
{
	System::String^ sql;
	sql = this->oMappClient->SelectConditionClient(Nom, Prenom, NomRue, NomVille);
	return this->oCad->getRows(sql, dataTableName);
}
void NS_Comp_Svc::Service::ajouterUnPersonnel(System::String^ Nom, System::String^ Prenom, System::String^ DateNaissance, System::String^ DateEmbauche)
{
	System::String^ sql;

	this->oMappPersonnel->setNom(Nom);
	this->oMappPersonnel->setPrenom(Prenom);
	this->oMappPersonnel->setDateNaissance(DateNaissance);
	this->oMappPersonnel->setDateEmbauche(DateEmbauche);
	this->oMappPersonnel->setIDPatron(1);
	sql = this->oMappPersonnel->Insert();

	this->oCad->actionRows(sql);
}
void NS_Comp_Svc::Service::ajouterUnClient(System::String^ Nom, System::String^ Prenom, System::String^ DateNaissance)
{
	System::String^ sql;

	this->oMappClient->setNom(Nom);
	this->oMappClient->setPrenom(Prenom);
	this->oMappClient->setDateNaissance(DateNaissance);
	sql = this->oMappClient->Insert();

	this->oCad->actionRows(sql);
}
void NS_Comp_Svc::Service::ajouterUneAdresse(System::String^ NomRue, System::String^ NumeroRue, System::String^ IDVille)
{
	System::String^ sql;

	this->oMappAdresse->setNomRue(NomRue);
	this->oMappAdresse->setNumeroRue(int::Parse(NumeroRue));
	this->oMappAdresse->setIDVille(int::Parse(IDVille)); 

	sql = this->oMappAdresse->Insert();

	this->oCad->actionRows(sql);
}
void NS_Comp_Svc::Service::ajouterHabiter(System::String^ Type)
{
	System::String^ sql;

	this->oMappHabiter->setTypeAdresse(Type);
	sql = this->oMappHabiter->Insert();

	this->oCad->actionRows(sql);

}

void NS_Comp_Svc::Service::ajouterUneCommande(System::String^ DateExpedition, System::String^ DateLivraison, System::String^ IDClient, System::String^ IDPaiement)
{
	System::String^ sql;

	this->oMappCommande->setDateExpedition(DateExpedition);
	this->oMappCommande->setDateLivraison(DateLivraison);
	this->oMappCommande->setIDClient(int::Parse(IDClient));

	sql = this->oMappCommande->Insert();

	this->oCad->actionRows(sql);

}

void NS_Comp_Svc::Service::ajouterUnArticle(System::String^ Nom, System::String^ Prix, System::String^ Stock, System::String^ Taxe, System::String^ PrixAchat)
{
	System::String^ sql;

	this->oMappProduit->setNomProduit(Nom);
	this->oMappProduit->setPrix(Prix);
	this->oMappProduit->setPrixAchat(PrixAchat);
	this->oMappProduit->setStock(int::Parse(Stock));
	sql = this->oMappProduit->Insert(Taxe);

	this->oCad->actionRows(sql);
}

void NS_Comp_Svc::Service::supprimerUnPersonnel(System::String^ ID)
{
	System::String^ sql;


	this->oMappPersonnel->setID(int::Parse(ID));
	sql = this->oMappPersonnel->Delete();

	this->oCad->actionRows(sql);
}
void NS_Comp_Svc::Service::supprimerUnClient(System::String^ ID)
{
	System::String^ sql;

	this->oMappClient->setID(int::Parse(ID));
	sql = this->oMappClient->Delete();

	this->oCad->actionRows(sql);
}

void NS_Comp_Svc::Service::supprimerUnProduit(System::String^ ID)
{
	System::String^ sql;

	this->oMappProduit->setIDProduit(int::Parse(ID));
	sql = this->oMappProduit->Delete();

	this->oCad->actionRows(sql);
}

void NS_Comp_Svc::Service::updateUnPersonnel(System::String^ ID, System::String^ nom, System::String^ prenom, System::String^ DateNaissance, System::String^ DateEmbauche) {
	System::String^ sql;

	this->oMappPersonnel->setID(int::Parse(ID));
	this->oMappPersonnel->setNom(nom);
	this->oMappPersonnel->setPrenom(prenom);
	this->oMappPersonnel->setDateNaissance(DateNaissance);
	this->oMappPersonnel->setDateEmbauche(DateEmbauche);

	sql = this->oMappPersonnel->Update();

	this->oCad->actionRows(sql);

}

void NS_Comp_Svc::Service::updateUneAdressePersonnel(System::String^ ID, System::String^ nom, System::String^ numero, System::String^ IDVille) {
	System::String^ sql;

	this->oMappAdresse->setID(int::Parse(ID));
	this->oMappAdresse->setNomRue(nom);
	this->oMappAdresse->setNumeroRue(int::Parse(numero));
	this->oMappAdresse->setIDVille(int::Parse(IDVille));

	sql = this->oMappAdresse->UpdatePersonnel();

	this->oCad->actionRows(sql);

}
void NS_Comp_Svc::Service::updateUneAdresseClient(System::String^ ID, System::String^ nom, System::String^ numero, System::String^ IDVille) {
	System::String^ sql;

	this->oMappAdresse->setID(int::Parse(ID));
	this->oMappAdresse->setNomRue(nom);
	this->oMappAdresse->setNumeroRue(int::Parse(numero));
	this->oMappAdresse->setIDVille(int::Parse(IDVille));

	sql = this->oMappAdresse->UpdateClient();

	this->oCad->actionRows(sql);

}

void NS_Comp_Svc::Service::updateUnClient(System::String^ ID, System::String^ nom, System::String^ prenom, System::String^ Naissance) {
	System::String^ sql;

	this->oMappClient->setID(int::Parse(ID));
	this->oMappClient->setNom(nom);
	this->oMappClient->setPrenom(prenom);
	this->oMappClient->setDateNaissance(Naissance);

	sql = this->oMappClient->Update();

	this->oCad->actionRows(sql);

}

void NS_Comp_Svc::Service::updateHabiter(System::String^ ID, System::String^ TypeAdresse) {
	System::String^ sql;

	this->oMappHabiter->setIDClient(int::Parse(ID));
	this->oMappHabiter->setTypeAdresse(TypeAdresse);

	sql = this->oMappHabiter->Update();

	this->oCad->actionRows(sql);

}

void NS_Comp_Svc::Service::updateUnproduit(System::String^ ID, System::String^ Nom, System::String^ Prix, System::String^ Stock, System::String^ PrixAchat) {
	System::String^ sql;

	this->oMappProduit->setIDProduit(int::Parse(ID));
	this->oMappProduit->setPrix(Prix);
	this->oMappProduit->setStock(int::Parse(Stock));
	this->oMappProduit->setNomProduit(Nom);
	this->oMappProduit->setPrixAchat(PrixAchat);

	sql = this->oMappProduit->Update();

	this->oCad->actionRows(sql);

}
System::Data::DataSet^ NS_Comp_Svc::Service::selectionnerUnArticle(System::String^ ID, System::String^ dataTableName)
{
	System::String^ sql;
	sql = this->oMappCommande->SelectConditionCommande(ID);
	return this->oCad->getRows(sql, dataTableName);
}

System::Data::DataSet^ NS_Comp_Svc::Service::selectionnerUneCommande(System::String^ ID, System::String^ dataTableName)
{
	System::String^ sql;
	sql = this->oMappCommande->SelectConditionUneCommande(ID);
	return this->oCad->getRows(sql, dataTableName);
}

System::Data::DataSet^ NS_Comp_Svc::Service::selectionnerUnProduit(System::String^ Nom, System::String^ Prix, System::String^ stock, System::String^ dataTableName)
{
	System::String^ sql;
	sql = this->oMappProduit->SelectConditionProduit(Nom, Prix, stock);
	return this->oCad->getRows(sql, dataTableName);
}

System::Data::DataSet^ NS_Comp_Svc::Service::selectionnerUnSeulProduit(System::String^ ID, System::String^ dataTableName)
{
	System::String^ sql;
	sql = this->oMappProduit->SelectUnProduit(ID);
	return this->oCad->getRows(sql, dataTableName);
}
void NS_Comp_Svc::Service::supprimerUneCommande(System::String^ ID)
{
	System::String^ sql;

	sql = this->oMappCommande->Delete(ID);

	this->oCad->actionRows(sql);
}