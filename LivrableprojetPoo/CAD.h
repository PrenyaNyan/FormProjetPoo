#pragma once

namespace NS_Comp_Data
{
	ref class CAD
	{
	private:
		System::String^ sSql;
		System::String^ sCnx;
		System::Data::SqlClient::SqlConnection^ oCnx; //Accede a la bDD
		System::Data::SqlClient::SqlCommand^ oCmd; //Spécifie la commande
		System::Data::SqlClient::SqlDataAdapter^ oDA; //Interagi avec la BDD
		System::Data::DataSet^ oDs;
	public:
		CAD(void);
		System::Data::DataSet^ getRows(System::String^, System::String^);
		void actionRows(System::String^);
	};
}
