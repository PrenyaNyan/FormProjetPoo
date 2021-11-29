#pragma once
namespace NS_Comp_Mappage
{
	ref class Client
	{
	private:
		System::String^ sSql;
		int ID;
		System::String^ Nom;
		System::String^ Prenom;
		System::String^ DateNaissance;
	public:
		System::String^ Select(void);
		System::String^ SelectOne(void);
		System::String^ SelectConditionClient(System::String^, System::String^, System::String^, System::String^);
		System::String^ Insert(void);
		System::String^ Delete(void);
		System::String^ Update(void);
		System::String^ UpdateDelete(void);

		void setID(int);
		void setNom(System::String^);
		void setPrenom(System::String^);
		void setDateNaissance(System::String^);
	};
}