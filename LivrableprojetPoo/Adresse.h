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
		System::String^ Delete(void);
		System::String^ Update(void);

		void setID(int);
		void setNomRue(System::String^);
		void setNumeroRue(int);
		void setIDVille(int);

		int getID(void);
		System::String^ getNomRue(void);
		int getNumeroRue(void);
		int getIDVille(void);
	};
}