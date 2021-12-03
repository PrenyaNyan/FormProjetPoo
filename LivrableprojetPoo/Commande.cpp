#include "pch.h"
#include "Commande.h"

System::String^ NS_Comp_Mappage::Commande::Select(void)
{
	return "select * from Produit";
}
System::String^ NS_Comp_Mappage::Commande::SelectConditionCommande(System::String^ IDArticle)
{
	return "select * from Produit where IDProduit = '"+IDArticle+"'";
}
System::String^ NS_Comp_Mappage::Commande::SelectConditionUneCommande(System::String^ IDClient, System::String^ Table)
{
	return "Select  IDClient,IDCommande,NomProduit,Quantite,DateLivraison from Produit inner join (Select IDClient, Commande.IDCommande, DateLivraison, IDProduit, Quantite from Commande inner join Composer on Commande.IDCommande = Composer.IDCommande where Commande."+Table+" = "+IDClient+")Tab1 on Tab1.IDProduit = Produit.IDProduit order by IDCommande;";
}
System::String^ NS_Comp_Mappage::Commande::Insert(void)
{
	return "Insert into Commande (DateLivraison,DateExpedition,IDClient) values ('"+DateLivraison+"','" + DateExpedition + "','" + IDClient + "');";
}
System::String^ NS_Comp_Mappage::Commande::Delete(System::String^ ID)
{
	return "Exec DelCommande "+ID+";";
}
System::String^ NS_Comp_Mappage::Commande::UpdateDelete(void)
{
	return "";
}
System::String^ NS_Comp_Mappage::Commande::Update(void)
{
	return "";
}

////////////////SET////////////////
void NS_Comp_Mappage::Commande::setID(int ID)
{
	this->ID = ID;
}
void NS_Comp_Mappage::Commande::setDateExpedition(System::String^ DateExpedition)
{
	this->DateExpedition = DateExpedition;
}
void NS_Comp_Mappage::Commande::setDateLivraison(System::String^ DateLivraison)
{
	this->DateLivraison = DateLivraison;
}
void NS_Comp_Mappage::Commande::setIDClient(int IDClient)
{
	this->IDClient = IDClient;
}
