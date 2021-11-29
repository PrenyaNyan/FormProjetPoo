#pragma once
namespace NS_Comp_Mappage
{
	ref class Habiter
	{
	private:
		System::String^ sSql;
		int IDClient;
		int IDAdresse;
		System::String^ TypeAdresse;
	public:
		System::String^ Insert(void);
		System::String^ Delete(void);
		System::String^ Update(void);
		System::String^ UpdateDelete(void);

		void setIDClient(int);
		void setIDAdresse(int);
		void setTypeAdresse(System::String^);
	};
}
