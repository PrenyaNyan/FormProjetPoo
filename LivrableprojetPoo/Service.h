#pragma once
#include "Personnel.h"
#include "Adresse.h"
#include "Client.h"
#include "Habiter.h"
#include "Commande.h"
#include "Composer.h"
#include "Produit.h"
#include "CAD.h"
#include "Stats.h"
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
		NS_Comp_Mappage::Commande^ oMappCommande;
		NS_Comp_Mappage::Composer^ oMappComposer;
		NS_Comp_Mappage::Produit^ oMappProduit;
		NS_Comp_Mappage::Stats^ oMappStats;
	public:
		Service(void);
		System::Data::DataSet^ selectionnerToutLePersonnel(System::String^);
		System::Data::DataSet^ selectionnerToutLesClients(System::String^);
		System::Data::DataSet^ selectionnerArticle(System::String^);
		System::Data::DataSet^ selectionnerUneCommande(System::String^, System::String^, System::String^);
		System::Data::DataSet^ selectionnerUnProduit(System::String^, System::String^, System::String^, System::String^);
		System::Data::DataSet^ selectionnerUnSeulProduit(System::String^, System::String^);
		System::Data::DataSet^ selectionnerUnPersonnel(System::String^, System::String^);
		System::Data::DataSet^ selectionnerUnClient(System::String^, System::String^); 
		System::Data::DataSet^ selectionnerUnArticle(System::String^, System::String^);
		System::Data::DataSet^ selectionnerConditionPersonnel(System::String^, System::String^, System::String^, System::String^, System::String^);
		System::Data::DataSet^ selectionnerConditionClient(System::String^, System::String^, System::String^, System::String^, System::String^);
		void ajouterUnPersonnel(System::String^, System::String^, System::String^, System::String^);
		void ajouterUnClient(System::String^, System::String^, System::String^);
		void ajouterUneAdresse(System::String^, System::String^, System::String^);
		void ajouterHabiter(System::String^);
		void ajouterUneCommande(System::String^, System::String^, System::String^);
		void ajouterUnArticle(System::String^, System::String^, System::String^, System::String^, System::String^);
		void ajouterComposer(System::String^, System::String^);
		void supprimerUnPersonnel(System::String^);
		void supprimerUnClient(System::String^);
		void supprimerUnProduit(System::String^);
		void supprimerUneCommande(System::String^);
		void updateUnPersonnel(System::String^, System::String^, System::String^, System::String^, System::String^);
		void updateUneAdressePersonnel(System::String^, System::String^, System::String^, System::String^);
		void updateUneAdresseClient(System::String^, System::String^, System::String^, System::String^);
		void updateUnClient(System::String^, System::String^, System::String^, System::String^);
		void updateHabiter(System::String^, System::String^);
		void updateUnproduit(System::String^, System::String^, System::String^, System::String^, System::String^);
		System::Data::DataSet^ PanierMoyen(System::String^);
		System::Data::DataSet^ ChiffreAffaire(System::String^, System::String^);
		System::Data::DataSet^ SeuilReap(System::String^,System::String^);
		System::Data::DataSet^ MontantAchat1Client(System::String^, System::String^);
		System::Data::DataSet^ PlusVendus(System::String^);
		System::Data::DataSet^ MoinsVendus(System::String^);
		System::Data::DataSet^ ValCom(System::String^);
		System::Data::DataSet^ ValAchat(System::String^);
		System::Data::DataSet^ SimulVar(System::String^, System::String^, System::String^, System::String^, System::String^, System::String^, System::String^, System::String^, System::String^);
	};
}