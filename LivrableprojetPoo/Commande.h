#pragma once
namespace NS_Comp_Mappage
{
	ref class Commande
	{
	private:
		System::String^ sSql;
		int ID;
		System::String^ DateLivraison;
		System::String^ DateExpedition;
		int IDClient;
	public:
		System::String^ Select(void);
		System::String^ SelectConditionCommande(System::String^);
		System::String^ SelectConditionUneCommande(System::String^, System::String^);
		System::String^ Insert(void);
		System::String^ Delete(System::String^);
		System::String^ Update(void);
		System::String^ UpdateDelete(void);

		void setID(int);
		void setDateLivraison(System::String^);
		void setDateExpedition(System::String^);
		void setIDClient(int);
	};
}

