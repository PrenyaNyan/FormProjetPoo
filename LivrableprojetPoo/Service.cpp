#include "pch.h"
#include "Service.h"

NS_Comp_Svc::Service::Service(void)
{
	this->oCad = gcnew NS_Comp_Data::CAD();
	this->oMappPersonnel = gcnew NS_Comp_Mappage::Personnel();
	this->oMappAdresse = gcnew NS_Comp_Mappage::Adresse();

}
System::Data::DataSet^ NS_Comp_Svc::Service::selectionnerToutLePersonnel(System::String^ dataTableName)
{
	System::String^ sql;

	sql = this->oMappPersonnel->Select();
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
void NS_Comp_Svc::Service::ajouterUneAdresse(System::String^ NomRue, System::String^ NumeroRue, System::String^ IDVille)
{
	System::String^ sql;

	this->oMappAdresse->setNomRue(NomRue);
	this->oMappAdresse->setNumeroRue(int::Parse(NumeroRue));
	this->oMappAdresse->setIDVille(int::Parse(IDVille)); 

	sql = this->oMappAdresse->Insert();

	this->oCad->actionRows(sql);
}

void NS_Comp_Svc::Service::supprimerUnPersonnel(System::String^ ID)
{
	System::String^ sql;


	this->oMappPersonnel->setID(int::Parse(ID));
	sql = this->oMappPersonnel->Delete();

	this->oCad->actionRows(sql);
}

void NS_Comp_Svc::Service::supprimerUneAdresse(System::String^ ID)
{
	System::String^ sql;

	this->oMappAdresse->setID(int::Parse(ID));
	sql = this->oMappAdresse->Delete();

	this->oCad->actionRows(sql);
}

void NS_Comp_Svc::Service::updateUnPersonnel(System::String^ nom, System::String^ prenom, System::String^ ID) {

	System::String^ sql;

	this->oMappPersonnel->setNom(nom);
	this->oMappPersonnel->setPrenom(prenom);
	this->oMappPersonnel->setID(int::Parse(ID));

	sql = this->oMappPersonnel->Update();

	this->oCad->actionRows(sql);

}

void NS_Comp_Svc::Service::updateDeletePersonnel(System::String^ ID) {

	System::String^ sql;

	this->oMappPersonnel->setID(int::Parse(ID));

	sql = this->oMappPersonnel->UpdateDelete();

	this->oCad->actionRows(sql);

}
