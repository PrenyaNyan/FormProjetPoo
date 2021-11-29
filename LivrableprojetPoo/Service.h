#pragma once
#include "Personnel.h"
#include "Adresse.h"
#include "Client.h"
#include "Habiter.h"
#include "CAD.h"

namespace NS_Comp_Svc
{
	ref class Service
	{
	private:
		NS_Comp_Data::CAD^ oCad;
		NS_Comp_Mappage::Personnel^ oMappPersonnel;
		NS_Comp_Mappage::Adresse^ oMappAdresse;
		NS_Comp_Mappage::Client^ oMappClient;
		NS_Comp_Mappage::Habiter^ oMappHabiter;
	public:
		Service(void);
		System::Data::DataSet^ selectionnerToutLePersonnel(System::String^);
		System::Data::DataSet^ selectionnerToutLesClients(System::String^);
		System::Data::DataSet^ selectionnerUnPersonnel(System::String^, System::String^);
		System::Data::DataSet^ selectionnerUnClient(System::String^, System::String^);
		System::Data::DataSet^ selectionnerConditionPersonnel(System::String^, System::String^, System::String^, System::String^, System::String^);
		System::Data::DataSet^ selectionnerConditionClient(System::String^, System::String^, System::String^, System::String^, System::String^);
		void ajouterUnPersonnel(System::String^, System::String^, System::String^, System::String^);
		void ajouterUnClient(System::String^, System::String^, System::String^);
		void ajouterUneAdresse(System::String^, System::String^, System::String^);
		void ajouterHabiter(System::String^);
		void supprimerUnPersonnel(System::String^);
		void supprimerUneAdressePersonnel(System::String^);
		void supprimerUneAdresseClient(System::String^);
		void supprimerUnClient(System::String^);
		void supprimerHabiter(System::String^);
		void updateUnPersonnel(System::String^, System::String^, System::String^, System::String^, System::String^);
		void updateUneAdressePersonnel(System::String^, System::String^, System::String^, System::String^);
		void updateUneAdresseClient(System::String^, System::String^, System::String^, System::String^);
		void updateUnClient(System::String^, System::String^, System::String^, System::String^);
		void updateHabiter(System::String^, System::String^);
		void updateDeletePersonnel(System::String^);
	};
}