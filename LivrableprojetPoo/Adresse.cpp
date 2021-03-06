#include "pch.h"
#include "Adresse.h"

System::String^ NS_Comp_Mappage::Adresse::Select(void)
{
	return "Select * from Adresse;";
}
System::String^ NS_Comp_Mappage::Adresse::Insert(void)
{
	return "Insert Into Adresse (NomRue, NumeroRue, IDVille) values ('" + this->NomRue + "', '" + this->NumeroRue + "', '" + this->IDVille + "');";
}
System::String^ NS_Comp_Mappage::Adresse::DeletePersonnel(void)
{
	return "Delete Adresse where IDAdresse = (select IDAdresse from Personnel where IDPersonnel = '" + this->ID + "'); ";
}
System::String^ NS_Comp_Mappage::Adresse::DeleteClient(void)
{
	return "";
}
System::String^ NS_Comp_Mappage::Adresse::UpdatePersonnel(void)
{
	return "Update Adresse set NomRue = '" + this->NomRue + "', NumeroRue = '" + this->NumeroRue + "', IDVille = '" + this->IDVille + "' where IDAdresse = (Select Adresse.IDAdresse from Adresse inner join Personnel on Adresse.IDAdresse = Personnel.IDAdresse where IDPersonnel = '" + this->ID + "')";

}
System::String^ NS_Comp_Mappage::Adresse::UpdateClient(void)
{
	return "Update Adresse set NumeroRue = '"+NumeroRue+"', NomRue = '"+NomRue+"', IDVille = '"+IDVille+"' where IDAdresse = (Select IDAdresse from Habiter where IDClient = '"+ID+"')";

}

////////////////SET////////////////
void NS_Comp_Mappage::Adresse::setID(int ID)
{
	this->ID = ID;
}
void NS_Comp_Mappage::Adresse::setNomRue(System::String^ _NomRue)
{
	this->NomRue = _NomRue;
}

void NS_Comp_Mappage::Adresse::setNumeroRue(int NumeroRue)
{
	this->NumeroRue = NumeroRue;
}
void NS_Comp_Mappage::Adresse::setIDVille(int IDVille)
{
	this->IDVille = IDVille;
}