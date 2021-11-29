#include "pch.h"
#include "Personnel.h"

System::String^ NS_Comp_Mappage::Personnel::Select(void)
{
	return "Select IDPersonnel, NomPersonnel, PrenomPersonnel,DateDeNaissancePersonnel, DateEmbauchePersonnel,NumeroRue,NomRue,NomVille,IDVille,NomPays from Pays inner join(Select IDPersonnel, NomPersonnel, PrenomPersonnel, DateDeNaissancePersonnel, DateEmbauchePersonnel, NumeroRue, NomRue, NomVille, Ville.IDVille, IDPays from Ville inner join(Select IDPersonnel, NomPersonnel, PrenomPersonnel, DateDeNaissancePersonnel, DateEmbauchePersonnel, NumeroRue, NomRue, IDVille, IDPersonnel_AvoirUnPatron as IDPatron from Personnel inner join Adresse on Personnel.IDAdresse = Adresse.IDAdresse)Tab1 on Ville.IDVille = Tab1.IDVille)Tab2 on Tab2.IDPays = Pays.IDPays";
}
System::String^ NS_Comp_Mappage::Personnel::SelectOne(void)
{
	return "Select IDPersonnel, NomPersonnel, PrenomPersonnel,DateDeNaissancePersonnel, DateEmbauchePersonnel,NumeroRue,NomRue,NomVille,IDVille,NomPays from Pays inner join(Select IDPersonnel, NomPersonnel, PrenomPersonnel, DateDeNaissancePersonnel, DateEmbauchePersonnel, NumeroRue, NomRue, NomVille, Ville.IDVille, IDPays from Ville inner join(Select IDPersonnel, NomPersonnel, PrenomPersonnel, DateDeNaissancePersonnel, DateEmbauchePersonnel, NumeroRue, NomRue, IDVille, IDPersonnel_AvoirUnPatron as IDPatron from Personnel inner join Adresse on Personnel.IDAdresse = Adresse.IDAdresse)Tab1 on Ville.IDVille = Tab1.IDVille)Tab2 on Tab2.IDPays = Pays.IDPays where IDPersonnel = '" + this->ID + "'; ";
}
System::String^ NS_Comp_Mappage::Personnel::SelectConditionPersonnel(System::String^ Nom, System::String^ Prenom, System::String^ NomRue, System::String^ NomVille)
{
	return "Select IDPersonnel, NomPersonnel, PrenomPersonnel,DateDeNaissancePersonnel, DateEmbauchePersonnel,NumeroRue,NomRue,NomVille,IDVille,NomPays  from Pays inner join(Select IDPersonnel, NomPersonnel, PrenomPersonnel, DateDeNaissancePersonnel, DateEmbauchePersonnel, NumeroRue, NomRue, NomVille, Ville.IDVille, IDPays from Ville inner join(Select IDPersonnel, NomPersonnel, PrenomPersonnel, DateDeNaissancePersonnel, DateEmbauchePersonnel, NumeroRue, NomRue, IDVille, IDPersonnel_AvoirUnPatron as IDPatron from Personnel inner join Adresse on Personnel.IDAdresse = Adresse.IDAdresse)Tab1 on Ville.IDVille = Tab1.IDVille)Tab2 on Tab2.IDPays = Pays.IDPays where NomPersonnel like '%"+Nom+"%' and PrenomPersonnel like '%"+Prenom+"%' and NomRue like '%" + NomRue + "%' and NomVille like '%" + NomVille + "%'; ";
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
