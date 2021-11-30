#include "pch.h"
#include "Commande.h"

System::String^ NS_Comp_Mappage::Commande::Select(void)
{
	return "select * from Produit";
}
System::String^ NS_Comp_Mappage::Commande::SelectOne(void)
{
	return "";
}
System::String^ NS_Comp_Mappage::Commande::Insert(void)
{
	return "";
}
System::String^ NS_Comp_Mappage::Commande::Delete(void)
{
	return "";
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
