#pragma once
namespace NS_Comp_Mappage
{
	ref class Composer
	{
	private:
		System::String^ sSql;
		int IDCommande;
		int^ IDProduit;
		int^ quantit�;
	public:
		System::String^ Select(void);
		System::String^ Insert(void);
		System::String^ Delete(void);
		System::String^ Update(void);
		System::String^ UpdateDelete(void);


		void setIDCommande(int);
		void setIDProduit(int);
		void setQuantit�(int);
	};
}

