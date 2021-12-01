#pragma once
namespace NS_Comp_Mappage
{
	ref class Taxer
	{
	private:
		System::String^ sSql;
		int IDTaxe;
		int^ IDProduit;
	public:
		System::String^ Select(void);
		System::String^ Insert(void);
		System::String^ Delete(void);
		System::String^ Update(void);
		System::String^ UpdateDelete(void);


		void setIDTaxe(int);
		void setIDproduit(int);
	};
}