#pragma once
namespace NS_Comp_Mappage
{
	ref class Adresse
	{
	private:
		System::String^ sSql;
		int ID;
		System::String^ NomRue;
		int NumeroRue;
		int IDVille;
	public:
		System::String^ Select(void);
		System::String^ Insert(void);
		System::String^ DeletePersonnel(void);
		System::String^ DeleteClient(void);
		System::String^ UpdatePersonnel(void);
		System::String^ UpdateClient(void);

		void setID(int);
		void setNomRue(System::String^);
		void setNumeroRue(int);
		void setIDVille(int);
	};
}