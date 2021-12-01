#pragma once
namespace NS_Comp_Mappage
{
	ref class Produit
	{
	private:
		System::String^ sSql;
		System::String^ Nomproduit;
		System::String^ Prix;
		System::String^ PrixAchat;
		int Stock;
		int IDProduit;
	public:
		System::String^ SelectConditionProduit(System::String^, System::String^, System::String^);
		System::String^ SelectUnProduit(System::String^);
		
		System::String^ Insert(System::String^);
		System::String^ Delete(void);
		System::String^ Update(void);


		void setNomProduit(System::String^);
		void setPrix(System::String^);
		void setPrixAchat(System::String^);
		void setStock(int);
		void setIDProduit(int);
	};
}