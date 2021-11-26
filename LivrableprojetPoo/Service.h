#pragma once
#include "Personnel.h"
#include "Adresse.h"
#include "CAD.h"

namespace NS_Comp_Svc
{
	ref class Service
	{
	private:
		NS_Comp_Data::CAD^ oCad;
		NS_Comp_Mappage::Personnel^ oMappPersonnel;
		NS_Comp_Mappage::Adresse^ oMappAdresse;
	public:
		Service(void);
		System::Data::DataSet^ selectionnerToutLePersonnel(System::String^);
		void ajouterUnPersonnel(System::String^, System::String^, System::String^, System::String^);
		void ajouterUneAdresse(System::String^, System::String^, System::String^);
		void supprimerUnPersonnel(System::String^);
		void supprimerUneAdresse(System::String^);
		void updateUnPersonnel(System::String^, System::String^, System::String^);
		void updateDeletePersonnel(System::String^);
	};
}

