#pragma once
namespace NS_Comp_Mappage
{
	ref class Personnel
	{
	private:
		System::String^ sSql;
		int ID;
		System::String^ Nom;
		System::String^ Prenom;
		System::String^ DateNaissance;
		System::String^ DateEmbauche;
		int IDAdresse;
		int IDPatron;
	public:
		System::String^ Select(void);
		System::String^ SelectOne(void);
		System::String^ SelectConditionPersonnel(System::String^, System::String^, System::String^, System::String^);
		System::String^ Insert(void);
		System::String^ Delete(void);
		System::String^ Update(void);
		System::String^ UpdateDelete(void);

		void setID(int);
		void setNom(System::String^);
		void setPrenom(System::String^);
		void setDateNaissance(System::String^);
		void setDateEmbauche(System::String^);
		void setIDAdresse(int);
		void setIDPatron(int);
	};
}

