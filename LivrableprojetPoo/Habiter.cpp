#include "pch.h"
#include "Habiter.h"

System::String^ NS_Comp_Mappage::Habiter::Insert(void)
{
	return "Insert Into Habiter (IDClient,IDAdresse,TypeAdresse) values ((Select top 1 IDClient from Client order by IDClient desc),(Select top 1 IDAdresse from Adresse order by IDAdresse desc),'"+TypeAdresse+"');";
}
System::String^ NS_Comp_Mappage::Habiter::Delete(void)
{
	return "";
}
System::String^ NS_Comp_Mappage::Habiter::UpdateDelete(void)
{
	return "";
}
System::String^ NS_Comp_Mappage::Habiter::Update(void)
{
	return "Update Habiter set TypeAdresse = '" + TypeAdresse + "' where IDClient = " + IDClient + "; ";
}

////////////////SET////////////////
void NS_Comp_Mappage::Habiter::setIDClient(int IDClient)
{
	this->IDClient = IDClient;
}
void NS_Comp_Mappage::Habiter::setIDAdresse(int IDAdresse)
{
	this->IDAdresse = IDAdresse;
}
void NS_Comp_Mappage::Habiter::setTypeAdresse(System::String^ TypeAdresse)
{
	this->TypeAdresse = TypeAdresse;
}

