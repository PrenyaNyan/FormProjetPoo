#include "pch.h"
#include "Composer.h"

System::String^ NS_Comp_Mappage::Composer::Select(void)
{
	return "";
}
System::String^ NS_Comp_Mappage::Composer::Insert(void)
{
	return "Insert into Composer (IDCommande,IDProduit,Quantite) values ((Select top 1 IDCommande from Commande order by IDcommande desc),'"+IDProduit+"','"+quantit�+"');";
}
System::String^ NS_Comp_Mappage::Composer::Delete(void)
{
	return "";
}
System::String^ NS_Comp_Mappage::Composer::UpdateDelete(void)
{
	return "";
}
System::String^ NS_Comp_Mappage::Composer::Update(void)
{
	return "";
}

////////////////SET////////////////
void NS_Comp_Mappage::Composer::setIDCommande(int IDCommande)
{
	this->IDCommande = IDCommande;
}
void NS_Comp_Mappage::Composer::setIDProduit(int IDProduit)
{
	this->IDProduit = IDProduit;
}
void NS_Comp_Mappage::Composer::setQuantit�(int Quantit�)
{
	this->quantit� = Quantit�;
}