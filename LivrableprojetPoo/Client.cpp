#include "pch.h"
#include "Client.h"

System::String^ NS_Comp_Mappage::Client::Select(void)
{
	return "select IDClient,NomClient,PrenomClient,DateDeNaissanceClient,IDAdresse,NumeroRue,NomRue,TypeAdresse,Ville.IDVille,NomVille from Ville inner join (select IDClient, NomClient, PrenomClient, DateDeNaissanceClient, Tab1.IDAdresse, NumeroRue, NomRue, TypeAdresse, IDVille from Adresse inner join (select Client.IDClient, NomClient, PrenomClient, DateDeNaissanceClient, IDAdresse, TypeAdresse from Client inner join Habiter on Client.IDClient = Habiter.IDClient) Tab1 on Adresse.IDAdresse = Tab1.IDAdresse) Tab2 on Tab2.IDVille = Ville.IDVille";
}
System::String^ NS_Comp_Mappage::Client::SelectOne(void)
{
	return "select IDClient,NomClient,PrenomClient,DateDeNaissanceClient,IDAdresse,NumeroRue,NomRue,TypeAdresse,Ville.IDVille,NomVille from Ville inner join (select IDClient, NomClient, PrenomClient, DateDeNaissanceClient, Tab1.IDAdresse, NumeroRue, NomRue, TypeAdresse, IDVille from Adresse inner join (select Client.IDClient, NomClient, PrenomClient, DateDeNaissanceClient, IDAdresse, TypeAdresse from Client inner join Habiter on Client.IDClient = Habiter.IDClient) Tab1 on Adresse.IDAdresse = Tab1.IDAdresse) Tab2 on Tab2.IDVille = Ville.IDVille where IDClient = '"+ID+"';";
}
System::String^ NS_Comp_Mappage::Client::SelectConditionClient(System::String^ Nom, System::String^ Prenom, System::String^ NomRue, System::String^ NomVille)
{
	return "select IDClient,NomClient,PrenomClient,DateDeNaissanceClient,IDAdresse,NumeroRue,NomRue,TypeAdresse,Ville.IDVille,NomVille from Ville inner join (select IDClient, NomClient, PrenomClient, DateDeNaissanceClient, Tab1.IDAdresse, NumeroRue, NomRue, TypeAdresse, IDVille from Adresse inner join (select Client.IDClient, NomClient, PrenomClient, DateDeNaissanceClient, IDAdresse, TypeAdresse from Client inner join Habiter on Client.IDClient = Habiter.IDClient) Tab1 on Adresse.IDAdresse = Tab1.IDAdresse) Tab2 on Tab2.IDVille = Ville.IDVille where NomClient like '%"+Nom+"%' and PrenomClient like '%"+Prenom+"%' and NomRue like '%"+NomRue+"%' and NomVille like '%"+NomVille+"%';";
}
System::String^ NS_Comp_Mappage::Client::Insert(void)
{
	return "Insert into Client (NomClient,PrenomClient,DateDeNaissanceClient) values ('"+ Nom +"','" + Prenom + "','" + DateNaissance + "');";
}
System::String^ NS_Comp_Mappage::Client::Delete(void)
{
	return "exec DelClient "+ID+"";
}
System::String^ NS_Comp_Mappage::Client::UpdateDelete(void)
{
	return "";
}
System::String^ NS_Comp_Mappage::Client::Update(void)
{
	return "Update Client set NomClient = '"+Nom+"', PrenomClient = '" + Prenom + "', DateDeNaissanceClient = '" + DateNaissance + "' where IDClient = " + ID + "; ";
}

////////////////SET////////////////
void NS_Comp_Mappage::Client::setID(int ID)
{
	this->ID = ID;
}
void NS_Comp_Mappage::Client::setNom(System::String^ Nom)
{
	this->Nom = Nom;
}
void NS_Comp_Mappage::Client::setPrenom(System::String^ Prenom)
{
	this->Prenom = Prenom;
}
void NS_Comp_Mappage::Client::setDateNaissance(System::String^ DateNaissance)
{
	this->DateNaissance = DateNaissance;
}
