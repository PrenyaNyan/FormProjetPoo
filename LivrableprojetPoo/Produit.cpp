#include "pch.h"
#include "Produit.h"

System::String^ NS_Comp_Mappage::Produit::SelectConditionProduit(System::String^ Nom, System::String^ Prix, System::String^Stock)
{
	return "select * from Produit where NomProduit like '%" + Nom + "%' and PrixProduit like '%" + Prix + "%' and StockProduit like '%" + Stock + "%'";
}
System::String^ NS_Comp_Mappage::Produit::SelectUnProduit(System::String^ ID)
{
	return "select * from Produit where IDProduit = '"+ID+"'";
}
System::String^ NS_Comp_Mappage::Produit::Insert(System::String^ Taxe)
{
	return "Insert Into Produit (NomProduit,PrixAchatProduit,PrixProduit,StockProduit) values ('"+Nomproduit+"','" + PrixAchat + "','" + Prix + "','" + Stock + "'); Insert Into Taxer(IDProduit, IDTaxe) values((Select top 1 IDProduit from Produit order by IDProduit desc), '"+ Taxe + "'); ";
}
System::String^ NS_Comp_Mappage::Produit::Delete(void)
{
	return "Delete Taxer where IDProduit = '"+IDProduit+"'; Delete Produit where IDProduit = '" + IDProduit + "'; ";
}
System::String^ NS_Comp_Mappage::Produit::Update(void)
{
	return "Update Produit set NomProduit = '"+Nomproduit+"', PrixAchatProduit = '" + PrixAchat + "', PrixProduit = '" + Prix + "', StockProduit = '" + Stock + "' where IDProduit = '" + IDProduit + "'; ";
}

////////////////SET////////////////
void NS_Comp_Mappage::Produit::setNomProduit(System::String^ NomProduit)
{
	this->Nomproduit = NomProduit;
}
void NS_Comp_Mappage::Produit::setPrix(System::String^ Prix)
{
	this->Prix = Prix;
}
void NS_Comp_Mappage::Produit::setPrixAchat(System::String^ PrixAchat)
{
	this->PrixAchat = PrixAchat;
}
void NS_Comp_Mappage::Produit::setStock(int Stock)
{
	this->Stock = Stock;
}
void NS_Comp_Mappage::Produit::setIDProduit(int ID)
{
	this->IDProduit = ID;
}
