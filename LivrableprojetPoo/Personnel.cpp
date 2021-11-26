#include "pch.h"
#include "Personnel.h"

System::String^ NS_Comp_Mappage::Personnel::Select(void)
{
	return "Select IDPersonnel,NomPersonnel,PrenomPersonnel,NumeroRue,NomRue,NomVille,NomPays,IDPatron from Pays inner join (Select IDPersonnel, NomPersonnel, PrenomPersonnel, NumeroRue, NomRue, NomVille, IDPays, IDPatron from Ville inner join (Select IDPersonnel, NomPersonnel, PrenomPersonnel, NumeroRue, NomRue, IDVille, IDPersonnel_AvoirUnPatron as IDPatron from Personnel inner join Adresse on Personnel.IDAdresse = Adresse.IDAdresse)Tab1 on Ville.IDVille = Tab1.IDVille)Tab2 on Tab2.IDPays = Pays.IDPays";
}
System::String^ NS_Comp_Mappage::Personnel::Insert(void)
{
	return "Insert Into Personnel(NomPersonnel,PrenomPersonnel,DateEmbauchePersonnel,DateDeNaissancePersonnel,IDAdresse,IDPersonnel_AvoirUnPatron) values ('" + this->Nom + "','" + this->Prenom + "','" + this->DateEmbauche + "','" + this->DateNaissance + "',(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'" + this->IDPatron + "');";
}
System::String^ NS_Comp_Mappage::Personnel::Delete(void)
{
	return "Delete Personnel where IDPersonnel = '" + this->ID + "';";
}
System::String^ NS_Comp_Mappage::Personnel::UpdateDelete(void)
{
	return "Update Personnel set IDPersonnel_AvoirUnPatron = NULL where IDPersonnel_AvoirUnPatron = '" + this->ID + "'; ";
}
System::String^ NS_Comp_Mappage::Personnel::Update(void)
{
	return "UPDATE Personnel SET NomPersonnel = '" + this->Nom + "', PrenomPersonnel = '" + this->Prenom + "', DateDeNaissancePersonnel = '" + this->DateNaissance + "', DateEmbauchePersonnel = '" + this->DateEmbauche + "' WHERE IDPersonnel = '" + this->ID + "'; ";
}

////////////////SET////////////////
void NS_Comp_Mappage::Personnel::setID(int ID)
{
	this->ID = ID;
}
void NS_Comp_Mappage::Personnel::setNom(System::String^ Nom)
{
	this->Nom = Nom;
}
void NS_Comp_Mappage::Personnel::setPrenom(System::String^ Prenom)
{
	this->Prenom = Prenom;
}
void NS_Comp_Mappage::Personnel::setDateNaissance(System::String^ DateNaissance)
{
	this->DateNaissance = DateNaissance;
}
void NS_Comp_Mappage::Personnel::setDateEmbauche(System::String^ DateEmbauche)
{
	this->DateEmbauche = DateEmbauche;
}
void NS_Comp_Mappage::Personnel::setIDAdresse(int IDAdresse)
{
	this->IDAdresse = IDAdresse;
}
void NS_Comp_Mappage::Personnel::setIDPatron(int IDPatron)
{
	this->IDPatron = IDPatron;
}

////////////////GET////////////////
int NS_Comp_Mappage::Personnel::getID(void) { return this->ID; }
System::String^ NS_Comp_Mappage::Personnel::getNom(void) { return this->Nom; }
System::String^ NS_Comp_Mappage::Personnel::getPrenom(void) { return this->Prenom; }
System::String^ NS_Comp_Mappage::Personnel::getDateNaissance(void) { return this->DateNaissance; }
System::String^ NS_Comp_Mappage::Personnel::getDateEmbauche(void) { return this->DateEmbauche; }
int NS_Comp_Mappage::Personnel::getIDAdresse(void) { return this->IDAdresse; }
int NS_Comp_Mappage::Personnel::getIDPatron(void) { return this->IDPatron; }
