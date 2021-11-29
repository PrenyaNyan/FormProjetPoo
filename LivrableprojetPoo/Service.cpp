#include "pch.h"
#include "Service.h"

NS_Comp_Svc::Service::Service(void)
{
	this->oCad = gcnew NS_Comp_Data::CAD();
	this->oMappPersonnel = gcnew NS_Comp_Mappage::Personnel();
	this->oMappAdresse = gcnew NS_Comp_Mappage::Adresse();
	this->oMappClient = gcnew NS_Comp_Mappage::Client();
	this->oMappHabiter = gcnew NS_Comp_Mappage::Habiter();


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

void NS_Comp_Svc::Service::supprimerUnPersonnel(System::String^ ID)
{
	System::String^ sql;


	this->oMappPersonnel->setID(int::Parse(ID));
	sql = this->oMappPersonnel->Delete();

	this->oCad->actionRows(sql);
}

void NS_Comp_Svc::Service::supprimerUneAdressePersonnel(System::String^ ID)
{
	System::String^ sql;

	this->oMappAdresse->setID(int::Parse(ID));
	sql = this->oMappAdresse->DeletePersonnel();

	this->oCad->actionRows(sql);
}
void NS_Comp_Svc::Service::supprimerUneAdresseClient(System::String^ ID)
{
	System::String^ sql;

	this->oMappAdresse->setID(int::Parse(ID));
	sql = this->oMappAdresse->DeleteClient();

	this->oCad->actionRows(sql);
}
void NS_Comp_Svc::Service::supprimerUnClient(System::String^ ID)
{
	System::String^ sql;

	this->oMappClient->setID(int::Parse(ID));
	sql = this->oMappClient->Delete();

	this->oCad->actionRows(sql);
}

void NS_Comp_Svc::Service::supprimerHabiter(System::String^ ID)
{
	System::String^ sql;

	this->oMappHabiter->setIDClient(int::Parse(ID));
	sql = this->oMappClient->Delete();

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

void NS_Comp_Svc::Service::updateDeletePersonnel(System::String^ ID) {

	System::String^ sql;

	this->oMappPersonnel->setID(int::Parse(ID));

	sql = this->oMappPersonnel->UpdateDelete();

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
