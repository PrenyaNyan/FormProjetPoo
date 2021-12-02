#pragma once
#include <string>
#include "Service.h"

namespace LivrableprojetPoo {

	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;

	/// <summary>
	/// Description résumée de MyForm
	/// </summary>
	public ref class MyForm : public System::Windows::Forms::Form
	{
	public:
		MyForm(void)
		{
			InitializeComponent();
			//
			//TODO: ajoutez ici le code du constructeur
			//
		}

	protected:
		/// <summary>
		/// Nettoyage des ressources utilisées.
		/// </summary>
		~MyForm()
		{
			if (components)
			{
				delete components;
			}
		}
	private: System::Windows::Forms::TabControl^ MainTab;
	private: System::Windows::Forms::TabPage^ MainPersonnel;

	private: System::Windows::Forms::TabPage^ MainClient;
	private: System::Windows::Forms::TabPage^ MainCommande;
	private: System::Windows::Forms::TabControl^ TabPersonnel;


	protected:

	protected:

	protected:

	protected:




	private: System::Windows::Forms::TabPage^ PersonnelCréer;
	private: System::Windows::Forms::TabPage^ PersonnelModifier;
	private: System::Windows::Forms::TabPage^ PersonnelAfficher;
	private: System::Windows::Forms::TabPage^ PersonnelSupprimer;
	private: System::Windows::Forms::TabControl^ TabClient;


	private: NS_Comp_Svc::Service^ oSvc;
	private: System::Data::DataSet^ oDs;

	public: System::Data::DataTableReader^ reader;



	private: System::Windows::Forms::TabPage^ ClientCréer;
	private: System::Windows::Forms::TabPage^ ClientModifier;
	private: System::Windows::Forms::TabPage^ ClientAfficher;
	private: System::Windows::Forms::TabPage^ ClientSupprimer;
	private: System::Windows::Forms::TabControl^ TabCommande;
	private: System::Windows::Forms::TabPage^ CommandeCréer;
	private: System::Windows::Forms::TabPage^ CommandeModifier;
	private: System::Windows::Forms::TabPage^ CommandeAfficher;
	private: System::Windows::Forms::TabPage^ CommandeSupprimer;
	private: System::Windows::Forms::DataGridView^ GridViewCréerPersonnel;
	private: System::Windows::Forms::Button^ ValiderCreerPersonnel;




	private: System::Windows::Forms::Label^ NomPersonnel;
	private: System::Windows::Forms::Label^ Prenom;
	private: System::Windows::Forms::Label^ DateEmbauche;
	private: System::Windows::Forms::Label^ DateNaissance;
	private: System::Windows::Forms::Label^ IDVille;


	private: System::Windows::Forms::Label^ NomRue;
	private: System::Windows::Forms::Label^ NumeroRue;
	private: System::Windows::Forms::TextBox^ InputNomPersonnel;


	private: System::Windows::Forms::TextBox^ InputDateDeNaissancePersonnel;

	private: System::Windows::Forms::TextBox^ InputPreomPersonnel;
	private: System::Windows::Forms::TextBox^ InputDateEmbauchePersonnel;





	private: System::Windows::Forms::TextBox^ InputIDVillePersonnel;

	private: System::Windows::Forms::TextBox^ InputNumeroRuePersonnel;

	private: System::Windows::Forms::TextBox^ InputNomRuePersonnel;
	private: System::Windows::Forms::TextBox^ InputDeletePersonnel;

	private: System::Windows::Forms::Label^ IDDeletePersonnel;

	private: System::Windows::Forms::Button^ ValiderDeletePersonnel;
	private: System::Windows::Forms::TextBox^ ModifIDVillePersonnel;


	private: System::Windows::Forms::TextBox^ ModifNumeroRuePersonnel;
	private: System::Windows::Forms::TextBox^ ModifNomRuePersonnel;



private: System::Windows::Forms::TextBox^ ModifDateEmbauchePersonnel;

private: System::Windows::Forms::TextBox^ ModifDateNaissancePersonnel;

private: System::Windows::Forms::TextBox^ ModifPrenomPersonnel;

private: System::Windows::Forms::TextBox^ ModifNomPersonnel;
private: System::Windows::Forms::Label^ IDVilleAff;



private: System::Windows::Forms::Label^ NomRueAff;
private: System::Windows::Forms::Label^ NumeroRueAff;


private: System::Windows::Forms::Label^ NaissanceAff;
private: System::Windows::Forms::Label^ EmbaucheAff;


private: System::Windows::Forms::Label^ PrenomAff;

private: System::Windows::Forms::Label^ NomAff;

private: System::Windows::Forms::TextBox^ ModifIDPersonnel;


private: System::Windows::Forms::Label^ label8;
private: System::Windows::Forms::DataGridView^ GridViewCréerCommande;




private: System::Windows::Forms::Button^ button1;
private: System::Windows::Forms::Button^ ChercherPersonnel;
private: System::Windows::Forms::TextBox^ InputChercheNomVille;

private: System::Windows::Forms::TextBox^ InputChercheNomRue;

private: System::Windows::Forms::TextBox^ InputCherchePrenom;

private: System::Windows::Forms::TextBox^ InputChercheNom;

private: System::Windows::Forms::Label^ label1;
private: System::Windows::Forms::Label^ label2;
private: System::Windows::Forms::Label^ label3;
private: System::Windows::Forms::Label^ label4;



private: System::Windows::Forms::Button^ ChercherNom;
private: System::Windows::Forms::TextBox^ IDVilleClient;

private: System::Windows::Forms::TextBox^ InputNumeroRueClient;

private: System::Windows::Forms::TextBox^ InputNomRueClient;

private: System::Windows::Forms::TextBox^ InputNaissanceClient;


private: System::Windows::Forms::TextBox^ InputPrenomClient;

private: System::Windows::Forms::TextBox^ InputNomClient;

private: System::Windows::Forms::Label^ label5;
private: System::Windows::Forms::Label^ label6;
private: System::Windows::Forms::Label^ label7;
private: System::Windows::Forms::Label^ label9;

private: System::Windows::Forms::Label^ label11;
private: System::Windows::Forms::Label^ label12;
private: System::Windows::Forms::Button^ button2;
private: System::Windows::Forms::DataGridView^ GridViewCréerClient;

private: System::Windows::Forms::Label^ label10;
private: System::Windows::Forms::ComboBox^ ChoixTypeClient;
private: System::Windows::Forms::Button^ button3;
private: System::Windows::Forms::TextBox^ InputModifIDClient;

private: System::Windows::Forms::Label^ label13;
private: System::Windows::Forms::TextBox^ ModifIDVilleClient;


private: System::Windows::Forms::TextBox^ ModifNumeroRueClient;

private: System::Windows::Forms::TextBox^ ModifNomRueClient;

private: System::Windows::Forms::TextBox^ ModifNaissanceClient;

private: System::Windows::Forms::TextBox^ ModifPrenomClient;

private: System::Windows::Forms::TextBox^ ModifNomClient;

private: System::Windows::Forms::Label^ TypeAdresseModifClient;

private: System::Windows::Forms::Label^ NumeroRueModifClient;
private: System::Windows::Forms::Label^ IDVilleModifClient;


private: System::Windows::Forms::Label^ NaissanceModifClient;
private: System::Windows::Forms::Label^ NomRueModifClient;


private: System::Windows::Forms::Label^ PrenomModifClient;

private: System::Windows::Forms::Label^ NomModifClient;
private: System::Windows::Forms::ComboBox^ ModifTypeAdresseClient;
private: System::Windows::Forms::Button^ button4;
private: System::Windows::Forms::Button^ button5;
private: System::Windows::Forms::TextBox^ InputChercheNomVilleClient;

private: System::Windows::Forms::TextBox^ InputChercheNomRueClient;

private: System::Windows::Forms::TextBox^ InputCherchePrenomClient;

private: System::Windows::Forms::TextBox^ InputChercheNomClient;


private: System::Windows::Forms::Label^ label14;
private: System::Windows::Forms::Label^ label15;
private: System::Windows::Forms::Label^ label16;
private: System::Windows::Forms::Label^ label17;
private: System::Windows::Forms::Button^ button6;
private: System::Windows::Forms::TextBox^ InputDeleteClient;
private: System::Windows::Forms::Label^ label18;
private: System::Windows::Forms::Button^ button8;
private: System::Windows::Forms::TextBox^ InputIDProduitCommande;
private: System::Windows::Forms::TextBox^ InputDatePaiementCommande;


private: System::Windows::Forms::TextBox^ InputModePaiementCommande;

private: System::Windows::Forms::TextBox^ InputDateExpeditionCommande;

private: System::Windows::Forms::TextBox^ InputDateLivraisonCommande;

private: System::Windows::Forms::TextBox^ InputIDCommande;

private: System::Windows::Forms::Label^ label19;
private: System::Windows::Forms::Label^ label20;
private: System::Windows::Forms::Label^ label22;
private: System::Windows::Forms::Label^ label23;
private: System::Windows::Forms::Label^ label24;
private: System::Windows::Forms::Label^ label25;
private: System::Windows::Forms::Button^ button7;

private: System::Windows::Forms::Button^ button10;
private: System::Windows::Forms::Button^ button11;


private: System::Windows::Forms::TabPage^ MainArticle;
private: System::Windows::Forms::Button^ button12;
private: System::Windows::Forms::Button^ button13;
private: System::Windows::Forms::TextBox^ InputCommandeAff;

private: System::Windows::Forms::Label^ label28;
private: System::Windows::Forms::Label^ labelosef;
private: System::Windows::Forms::TextBox^ QuantiterProduitCommande;
private: System::Windows::Forms::Label^ label21;
private: System::Windows::Forms::TabControl^ tabControl1;
private: System::Windows::Forms::TabPage^ tabPage1;
private: System::Windows::Forms::Button^ button14;
private: System::Windows::Forms::TabPage^ tabPage2;
private: System::Windows::Forms::TabPage^ tabPage3;



private: System::Windows::Forms::TabPage^ tabPage4;
private: System::Windows::Forms::DataGridView^ GridViewCréerArticle;
private: System::Windows::Forms::TextBox^ InputTaxeproduit;




private: System::Windows::Forms::TextBox^ InputStockproduit;

private: System::Windows::Forms::TextBox^ InputPrixproduit;

private: System::Windows::Forms::TextBox^ InputNomproduit;




private: System::Windows::Forms::Label^ label30;
private: System::Windows::Forms::Label^ label31;
private: System::Windows::Forms::Label^ label32;
private: System::Windows::Forms::Label^ label33;
private: System::Windows::Forms::Button^ button15;
private: System::Windows::Forms::Button^ button16;
private: System::Windows::Forms::TextBox^ InputDeleteProduit;

private: System::Windows::Forms::Label^ label26;



private: System::Windows::Forms::Label^ label27;
private: System::Windows::Forms::Label^ label29;
private: System::Windows::Forms::Button^ button17;
private: System::Windows::Forms::TextBox^ InputChercheStockProduit;
private: System::Windows::Forms::TextBox^ InputCherchePrixProduit;
private: System::Windows::Forms::TextBox^ InputChercheNomProduit;
private: System::Windows::Forms::Label^ label38;
private: System::Windows::Forms::TextBox^ InputPrixAchatproduit;
private: System::Windows::Forms::Label^ label34;
private: System::Windows::Forms::Button^ button18;
private: System::Windows::Forms::TextBox^ ModifIDProduit;
private: System::Windows::Forms::Label^ label35;
private: System::Windows::Forms::TextBox^ ModifPrixAchatProduit;

private: System::Windows::Forms::TextBox^ ModifStockProduit;
private: System::Windows::Forms::TextBox^ ModifPrixProduit;
private: System::Windows::Forms::TextBox^ ModifNomProduit;
private: System::Windows::Forms::Label^ NomPrixAchatproduit;

private: System::Windows::Forms::Label^ NomStockproduit;



private: System::Windows::Forms::Label^ NomPrixproduit;

private: System::Windows::Forms::Label^ NomAffproduit;

private: System::Windows::Forms::Button^ button19;
private: System::Windows::Forms::Button^ ButtonDelCommande;
private: System::Windows::Forms::TextBox^ TextDelCommande;
private: System::Windows::Forms::Label^ label36;

private: System::Windows::Forms::ListBox^ listBox1;
private: System::Windows::Forms::Label^ label37;
private: System::Windows::Forms::DataGridView^ PanierClient;
private: System::Windows::Forms::DataGridViewTextBoxColumn^ IDProduit;
private: System::Windows::Forms::DataGridViewTextBoxColumn^ NomProduit;
private: System::Windows::Forms::DataGridViewTextBoxColumn^ Quantité;
private: System::Windows::Forms::TabPage^ tabPage5;
private: System::Windows::Forms::Label^ label54;
private: System::Windows::Forms::TextBox^ StatsDemarqueInco;
private: System::Windows::Forms::Label^ label55;
private: System::Windows::Forms::TextBox^ StatsRemiseCom;
private: System::Windows::Forms::Label^ label56;
private: System::Windows::Forms::TextBox^ StatsMargeCom;
private: System::Windows::Forms::Label^ label57;
private: System::Windows::Forms::TextBox^ StatsImport;
private: System::Windows::Forms::Label^ label53;
private: System::Windows::Forms::TextBox^ StatsTVAp;
private: System::Windows::Forms::Label^ label52;
private: System::Windows::Forms::TextBox^ StatsTVAr;
private: System::Windows::Forms::Label^ label51;
private: System::Windows::Forms::TextBox^ StatsTVAi;
private: System::Windows::Forms::Label^ label50;
private: System::Windows::Forms::TextBox^ StatsTVAn;
private: System::Windows::Forms::Label^ label49;
private: System::Windows::Forms::TextBox^ StatsIDClient;
private: System::Windows::Forms::Label^ label48;
private: System::Windows::Forms::TextBox^ StatsDateEntree;
private: System::Windows::Forms::Label^ label47;
private: System::Windows::Forms::Label^ label46;
private: System::Windows::Forms::Label^ label45;
private: System::Windows::Forms::Label^ label44;
private: System::Windows::Forms::Label^ label43;
private: System::Windows::Forms::Label^ label42;
private: System::Windows::Forms::Label^ label41;
private: System::Windows::Forms::Label^ label40;
private: System::Windows::Forms::Label^ label39;
private: System::Windows::Forms::Button^ button27;
private: System::Windows::Forms::Button^ button26;
private: System::Windows::Forms::Button^ button25;
private: System::Windows::Forms::Button^ button24;
private: System::Windows::Forms::Button^ button23;
private: System::Windows::Forms::Button^ button22;
private: System::Windows::Forms::Button^ button21;
private: System::Windows::Forms::Button^ button20;
private: System::Windows::Forms::Button^ button9;
private: System::Windows::Forms::DataGridView^ DataGridStats;
private: System::Windows::Forms::Label^ label58;
private: System::Windows::Forms::ListBox^ listBox2;
private: System::Windows::Forms::Label^ label58;
private: System::Windows::Forms::TextBox^ StatsSeuilReap;



























































	private:
		/// <summary>
		/// Variable nécessaire au concepteur.
		/// </summary>
		System::ComponentModel::Container ^components;

#pragma region Windows Form Designer generated code
		/// <summary>
		/// Méthode requise pour la prise en charge du concepteur - ne modifiez pas
		/// le contenu de cette méthode avec l'éditeur de code.
		/// </summary>
		void InitializeComponent(void)
		{
			this->MainTab = (gcnew System::Windows::Forms::TabControl());
			this->MainPersonnel = (gcnew System::Windows::Forms::TabPage());
			this->TabPersonnel = (gcnew System::Windows::Forms::TabControl());
			this->PersonnelCréer = (gcnew System::Windows::Forms::TabPage());
			this->label37 = (gcnew System::Windows::Forms::Label());
			this->listBox1 = (gcnew System::Windows::Forms::ListBox());
			this->button10 = (gcnew System::Windows::Forms::Button());
			this->InputIDVillePersonnel = (gcnew System::Windows::Forms::TextBox());
			this->InputNumeroRuePersonnel = (gcnew System::Windows::Forms::TextBox());
			this->InputNomRuePersonnel = (gcnew System::Windows::Forms::TextBox());
			this->InputDateEmbauchePersonnel = (gcnew System::Windows::Forms::TextBox());
			this->InputDateDeNaissancePersonnel = (gcnew System::Windows::Forms::TextBox());
			this->InputPreomPersonnel = (gcnew System::Windows::Forms::TextBox());
			this->InputNomPersonnel = (gcnew System::Windows::Forms::TextBox());
			this->IDVille = (gcnew System::Windows::Forms::Label());
			this->NomRue = (gcnew System::Windows::Forms::Label());
			this->NumeroRue = (gcnew System::Windows::Forms::Label());
			this->DateNaissance = (gcnew System::Windows::Forms::Label());
			this->DateEmbauche = (gcnew System::Windows::Forms::Label());
			this->Prenom = (gcnew System::Windows::Forms::Label());
			this->NomPersonnel = (gcnew System::Windows::Forms::Label());
			this->ValiderCreerPersonnel = (gcnew System::Windows::Forms::Button());
			this->PersonnelModifier = (gcnew System::Windows::Forms::TabPage());
			this->ChercherPersonnel = (gcnew System::Windows::Forms::Button());
			this->button1 = (gcnew System::Windows::Forms::Button());
			this->ModifIDPersonnel = (gcnew System::Windows::Forms::TextBox());
			this->label8 = (gcnew System::Windows::Forms::Label());
			this->ModifIDVillePersonnel = (gcnew System::Windows::Forms::TextBox());
			this->ModifNumeroRuePersonnel = (gcnew System::Windows::Forms::TextBox());
			this->ModifNomRuePersonnel = (gcnew System::Windows::Forms::TextBox());
			this->ModifDateEmbauchePersonnel = (gcnew System::Windows::Forms::TextBox());
			this->ModifDateNaissancePersonnel = (gcnew System::Windows::Forms::TextBox());
			this->ModifPrenomPersonnel = (gcnew System::Windows::Forms::TextBox());
			this->ModifNomPersonnel = (gcnew System::Windows::Forms::TextBox());
			this->IDVilleAff = (gcnew System::Windows::Forms::Label());
			this->NomRueAff = (gcnew System::Windows::Forms::Label());
			this->NumeroRueAff = (gcnew System::Windows::Forms::Label());
			this->NaissanceAff = (gcnew System::Windows::Forms::Label());
			this->EmbaucheAff = (gcnew System::Windows::Forms::Label());
			this->PrenomAff = (gcnew System::Windows::Forms::Label());
			this->NomAff = (gcnew System::Windows::Forms::Label());
			this->PersonnelAfficher = (gcnew System::Windows::Forms::TabPage());
			this->ChercherNom = (gcnew System::Windows::Forms::Button());
			this->InputChercheNomVille = (gcnew System::Windows::Forms::TextBox());
			this->InputChercheNomRue = (gcnew System::Windows::Forms::TextBox());
			this->InputCherchePrenom = (gcnew System::Windows::Forms::TextBox());
			this->InputChercheNom = (gcnew System::Windows::Forms::TextBox());
			this->label1 = (gcnew System::Windows::Forms::Label());
			this->label2 = (gcnew System::Windows::Forms::Label());
			this->label3 = (gcnew System::Windows::Forms::Label());
			this->label4 = (gcnew System::Windows::Forms::Label());
			this->PersonnelSupprimer = (gcnew System::Windows::Forms::TabPage());
			this->ValiderDeletePersonnel = (gcnew System::Windows::Forms::Button());
			this->InputDeletePersonnel = (gcnew System::Windows::Forms::TextBox());
			this->IDDeletePersonnel = (gcnew System::Windows::Forms::Label());
			this->GridViewCréerPersonnel = (gcnew System::Windows::Forms::DataGridView());
			this->MainClient = (gcnew System::Windows::Forms::TabPage());
			this->GridViewCréerClient = (gcnew System::Windows::Forms::DataGridView());
			this->TabClient = (gcnew System::Windows::Forms::TabControl());
			this->ClientCréer = (gcnew System::Windows::Forms::TabPage());
			this->button11 = (gcnew System::Windows::Forms::Button());
			this->label10 = (gcnew System::Windows::Forms::Label());
			this->ChoixTypeClient = (gcnew System::Windows::Forms::ComboBox());
			this->IDVilleClient = (gcnew System::Windows::Forms::TextBox());
			this->InputNumeroRueClient = (gcnew System::Windows::Forms::TextBox());
			this->InputNomRueClient = (gcnew System::Windows::Forms::TextBox());
			this->InputNaissanceClient = (gcnew System::Windows::Forms::TextBox());
			this->InputPrenomClient = (gcnew System::Windows::Forms::TextBox());
			this->InputNomClient = (gcnew System::Windows::Forms::TextBox());
			this->label5 = (gcnew System::Windows::Forms::Label());
			this->label6 = (gcnew System::Windows::Forms::Label());
			this->label7 = (gcnew System::Windows::Forms::Label());
			this->label9 = (gcnew System::Windows::Forms::Label());
			this->label11 = (gcnew System::Windows::Forms::Label());
			this->label12 = (gcnew System::Windows::Forms::Label());
			this->button2 = (gcnew System::Windows::Forms::Button());
			this->ClientModifier = (gcnew System::Windows::Forms::TabPage());
			this->button4 = (gcnew System::Windows::Forms::Button());
			this->ModifTypeAdresseClient = (gcnew System::Windows::Forms::ComboBox());
			this->button3 = (gcnew System::Windows::Forms::Button());
			this->InputModifIDClient = (gcnew System::Windows::Forms::TextBox());
			this->label13 = (gcnew System::Windows::Forms::Label());
			this->ModifIDVilleClient = (gcnew System::Windows::Forms::TextBox());
			this->ModifNumeroRueClient = (gcnew System::Windows::Forms::TextBox());
			this->ModifNomRueClient = (gcnew System::Windows::Forms::TextBox());
			this->ModifNaissanceClient = (gcnew System::Windows::Forms::TextBox());
			this->ModifPrenomClient = (gcnew System::Windows::Forms::TextBox());
			this->ModifNomClient = (gcnew System::Windows::Forms::TextBox());
			this->TypeAdresseModifClient = (gcnew System::Windows::Forms::Label());
			this->NumeroRueModifClient = (gcnew System::Windows::Forms::Label());
			this->IDVilleModifClient = (gcnew System::Windows::Forms::Label());
			this->NaissanceModifClient = (gcnew System::Windows::Forms::Label());
			this->NomRueModifClient = (gcnew System::Windows::Forms::Label());
			this->PrenomModifClient = (gcnew System::Windows::Forms::Label());
			this->NomModifClient = (gcnew System::Windows::Forms::Label());
			this->ClientAfficher = (gcnew System::Windows::Forms::TabPage());
			this->button5 = (gcnew System::Windows::Forms::Button());
			this->InputChercheNomVilleClient = (gcnew System::Windows::Forms::TextBox());
			this->InputChercheNomRueClient = (gcnew System::Windows::Forms::TextBox());
			this->InputCherchePrenomClient = (gcnew System::Windows::Forms::TextBox());
			this->InputChercheNomClient = (gcnew System::Windows::Forms::TextBox());
			this->label14 = (gcnew System::Windows::Forms::Label());
			this->label15 = (gcnew System::Windows::Forms::Label());
			this->label16 = (gcnew System::Windows::Forms::Label());
			this->label17 = (gcnew System::Windows::Forms::Label());
			this->ClientSupprimer = (gcnew System::Windows::Forms::TabPage());
			this->button6 = (gcnew System::Windows::Forms::Button());
			this->InputDeleteClient = (gcnew System::Windows::Forms::TextBox());
			this->label18 = (gcnew System::Windows::Forms::Label());
			this->MainCommande = (gcnew System::Windows::Forms::TabPage());
			this->GridViewCréerCommande = (gcnew System::Windows::Forms::DataGridView());
			this->TabCommande = (gcnew System::Windows::Forms::TabControl());
			this->CommandeCréer = (gcnew System::Windows::Forms::TabPage());
			this->label39 = (gcnew System::Windows::Forms::Label());
			this->PanierClient = (gcnew System::Windows::Forms::DataGridView());
			this->IDProduit = (gcnew System::Windows::Forms::DataGridViewTextBoxColumn());
			this->NomProduit = (gcnew System::Windows::Forms::DataGridViewTextBoxColumn());
			this->Quantité = (gcnew System::Windows::Forms::DataGridViewTextBoxColumn());
			this->label21 = (gcnew System::Windows::Forms::Label());
			this->labelosef = (gcnew System::Windows::Forms::Label());
			this->QuantiterProduitCommande = (gcnew System::Windows::Forms::TextBox());
			this->button12 = (gcnew System::Windows::Forms::Button());
			this->button8 = (gcnew System::Windows::Forms::Button());
			this->InputIDProduitCommande = (gcnew System::Windows::Forms::TextBox());
			this->InputDatePaiementCommande = (gcnew System::Windows::Forms::TextBox());
			this->InputModePaiementCommande = (gcnew System::Windows::Forms::TextBox());
			this->InputDateExpeditionCommande = (gcnew System::Windows::Forms::TextBox());
			this->InputDateLivraisonCommande = (gcnew System::Windows::Forms::TextBox());
			this->InputIDCommande = (gcnew System::Windows::Forms::TextBox());
			this->label19 = (gcnew System::Windows::Forms::Label());
			this->label20 = (gcnew System::Windows::Forms::Label());
			this->label22 = (gcnew System::Windows::Forms::Label());
			this->label23 = (gcnew System::Windows::Forms::Label());
			this->label24 = (gcnew System::Windows::Forms::Label());
			this->label25 = (gcnew System::Windows::Forms::Label());
			this->button7 = (gcnew System::Windows::Forms::Button());
			this->CommandeModifier = (gcnew System::Windows::Forms::TabPage());
			this->CommandeAfficher = (gcnew System::Windows::Forms::TabPage());
			this->button13 = (gcnew System::Windows::Forms::Button());
			this->InputCommandeAff = (gcnew System::Windows::Forms::TextBox());
			this->label28 = (gcnew System::Windows::Forms::Label());
			this->CommandeSupprimer = (gcnew System::Windows::Forms::TabPage());
			this->ButtonDelCommande = (gcnew System::Windows::Forms::Button());
			this->TextDelCommande = (gcnew System::Windows::Forms::TextBox());
			this->label36 = (gcnew System::Windows::Forms::Label());
			this->MainArticle = (gcnew System::Windows::Forms::TabPage());
			this->tabControl1 = (gcnew System::Windows::Forms::TabControl());
			this->tabPage1 = (gcnew System::Windows::Forms::TabPage());
			this->label34 = (gcnew System::Windows::Forms::Label());
			this->InputPrixAchatproduit = (gcnew System::Windows::Forms::TextBox());
			this->InputTaxeproduit = (gcnew System::Windows::Forms::TextBox());
			this->InputStockproduit = (gcnew System::Windows::Forms::TextBox());
			this->InputPrixproduit = (gcnew System::Windows::Forms::TextBox());
			this->InputNomproduit = (gcnew System::Windows::Forms::TextBox());
			this->label30 = (gcnew System::Windows::Forms::Label());
			this->label31 = (gcnew System::Windows::Forms::Label());
			this->label32 = (gcnew System::Windows::Forms::Label());
			this->label33 = (gcnew System::Windows::Forms::Label());
			this->button15 = (gcnew System::Windows::Forms::Button());
			this->button14 = (gcnew System::Windows::Forms::Button());
			this->tabPage2 = (gcnew System::Windows::Forms::TabPage());
			this->button19 = (gcnew System::Windows::Forms::Button());
			this->button18 = (gcnew System::Windows::Forms::Button());
			this->ModifIDProduit = (gcnew System::Windows::Forms::TextBox());
			this->label35 = (gcnew System::Windows::Forms::Label());
			this->ModifPrixAchatProduit = (gcnew System::Windows::Forms::TextBox());
			this->ModifStockProduit = (gcnew System::Windows::Forms::TextBox());
			this->ModifPrixProduit = (gcnew System::Windows::Forms::TextBox());
			this->ModifNomProduit = (gcnew System::Windows::Forms::TextBox());
			this->NomPrixAchatproduit = (gcnew System::Windows::Forms::Label());
			this->NomStockproduit = (gcnew System::Windows::Forms::Label());
			this->NomPrixproduit = (gcnew System::Windows::Forms::Label());
			this->NomAffproduit = (gcnew System::Windows::Forms::Label());
			this->tabPage3 = (gcnew System::Windows::Forms::TabPage());
			this->button17 = (gcnew System::Windows::Forms::Button());
			this->InputChercheStockProduit = (gcnew System::Windows::Forms::TextBox());
			this->InputCherchePrixProduit = (gcnew System::Windows::Forms::TextBox());
			this->InputChercheNomProduit = (gcnew System::Windows::Forms::TextBox());
			this->label38 = (gcnew System::Windows::Forms::Label());
			this->label27 = (gcnew System::Windows::Forms::Label());
			this->label29 = (gcnew System::Windows::Forms::Label());
			this->tabPage4 = (gcnew System::Windows::Forms::TabPage());
			this->button16 = (gcnew System::Windows::Forms::Button());
			this->InputDeleteProduit = (gcnew System::Windows::Forms::TextBox());
			this->label26 = (gcnew System::Windows::Forms::Label());
			this->GridViewCréerArticle = (gcnew System::Windows::Forms::DataGridView());
			this->tabPage5 = (gcnew System::Windows::Forms::TabPage());
			this->label58 = (gcnew System::Windows::Forms::Label());
			this->StatsSeuilReap = (gcnew System::Windows::Forms::TextBox());
			this->label54 = (gcnew System::Windows::Forms::Label());
			this->StatsDemarqueInco = (gcnew System::Windows::Forms::TextBox());
			this->label55 = (gcnew System::Windows::Forms::Label());
			this->StatsRemiseCom = (gcnew System::Windows::Forms::TextBox());
			this->label56 = (gcnew System::Windows::Forms::Label());
			this->StatsMargeCom = (gcnew System::Windows::Forms::TextBox());
			this->label57 = (gcnew System::Windows::Forms::Label());
			this->StatsImport = (gcnew System::Windows::Forms::TextBox());
			this->label53 = (gcnew System::Windows::Forms::Label());
			this->StatsTVAp = (gcnew System::Windows::Forms::TextBox());
			this->label52 = (gcnew System::Windows::Forms::Label());
			this->StatsTVAr = (gcnew System::Windows::Forms::TextBox());
			this->label51 = (gcnew System::Windows::Forms::Label());
			this->StatsTVAi = (gcnew System::Windows::Forms::TextBox());
			this->label50 = (gcnew System::Windows::Forms::Label());
			this->StatsTVAn = (gcnew System::Windows::Forms::TextBox());
			this->label49 = (gcnew System::Windows::Forms::Label());
			this->StatsIDClient = (gcnew System::Windows::Forms::TextBox());
			this->label48 = (gcnew System::Windows::Forms::Label());
			this->StatsDateEntree = (gcnew System::Windows::Forms::TextBox());
			this->label47 = (gcnew System::Windows::Forms::Label());
			this->label46 = (gcnew System::Windows::Forms::Label());
			this->label45 = (gcnew System::Windows::Forms::Label());
			this->label44 = (gcnew System::Windows::Forms::Label());
			this->label43 = (gcnew System::Windows::Forms::Label());
			this->label42 = (gcnew System::Windows::Forms::Label());
			this->label41 = (gcnew System::Windows::Forms::Label());
			this->label40 = (gcnew System::Windows::Forms::Label());
			this->button27 = (gcnew System::Windows::Forms::Button());
			this->button26 = (gcnew System::Windows::Forms::Button());
			this->button25 = (gcnew System::Windows::Forms::Button());
			this->button24 = (gcnew System::Windows::Forms::Button());
			this->button23 = (gcnew System::Windows::Forms::Button());
			this->button22 = (gcnew System::Windows::Forms::Button());
			this->button21 = (gcnew System::Windows::Forms::Button());
			this->button20 = (gcnew System::Windows::Forms::Button());
			this->button9 = (gcnew System::Windows::Forms::Button());
			this->DataGridStats = (gcnew System::Windows::Forms::DataGridView());
			this->label58 = (gcnew System::Windows::Forms::Label());
			this->listBox2 = (gcnew System::Windows::Forms::ListBox());
			this->MainTab->SuspendLayout();
			this->MainPersonnel->SuspendLayout();
			this->TabPersonnel->SuspendLayout();
			this->PersonnelCréer->SuspendLayout();
			this->PersonnelModifier->SuspendLayout();
			this->PersonnelAfficher->SuspendLayout();
			this->PersonnelSupprimer->SuspendLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->GridViewCréerPersonnel))->BeginInit();
			this->MainClient->SuspendLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->GridViewCréerClient))->BeginInit();
			this->TabClient->SuspendLayout();
			this->ClientCréer->SuspendLayout();
			this->ClientModifier->SuspendLayout();
			this->ClientAfficher->SuspendLayout();
			this->ClientSupprimer->SuspendLayout();
			this->MainCommande->SuspendLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->GridViewCréerCommande))->BeginInit();
			this->TabCommande->SuspendLayout();
			this->CommandeCréer->SuspendLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->PanierClient))->BeginInit();
			this->CommandeAfficher->SuspendLayout();
			this->CommandeSupprimer->SuspendLayout();
			this->MainArticle->SuspendLayout();
			this->tabControl1->SuspendLayout();
			this->tabPage1->SuspendLayout();
			this->tabPage2->SuspendLayout();
			this->tabPage3->SuspendLayout();
			this->tabPage4->SuspendLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->GridViewCréerArticle))->BeginInit();
			this->tabPage5->SuspendLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->DataGridStats))->BeginInit();
			this->SuspendLayout();
			// 
			// MainTab
			// 
			this->MainTab->Controls->Add(this->MainPersonnel);
			this->MainTab->Controls->Add(this->MainClient);
			this->MainTab->Controls->Add(this->MainCommande);
			this->MainTab->Controls->Add(this->MainArticle);
			this->MainTab->Controls->Add(this->tabPage5);
			this->MainTab->Dock = System::Windows::Forms::DockStyle::Fill;
			this->MainTab->Location = System::Drawing::Point(0, 0);
			this->MainTab->Name = L"MainTab";
			this->MainTab->SelectedIndex = 0;
			this->MainTab->Size = System::Drawing::Size(1162, 645);
			this->MainTab->TabIndex = 0;
			// 
			// MainPersonnel
			// 
			this->MainPersonnel->Controls->Add(this->TabPersonnel);
			this->MainPersonnel->Controls->Add(this->GridViewCréerPersonnel);
			this->MainPersonnel->Location = System::Drawing::Point(4, 25);
			this->MainPersonnel->Name = L"MainPersonnel";
			this->MainPersonnel->Padding = System::Windows::Forms::Padding(3);
			this->MainPersonnel->Size = System::Drawing::Size(1154, 616);
			this->MainPersonnel->TabIndex = 0;
			this->MainPersonnel->Text = L"Personnel";
			this->MainPersonnel->UseVisualStyleBackColor = true;
			// 
			// TabPersonnel
			// 
			this->TabPersonnel->Controls->Add(this->PersonnelCréer);
			this->TabPersonnel->Controls->Add(this->PersonnelModifier);
			this->TabPersonnel->Controls->Add(this->PersonnelAfficher);
			this->TabPersonnel->Controls->Add(this->PersonnelSupprimer);
			this->TabPersonnel->Location = System::Drawing::Point(3, 285);
			this->TabPersonnel->Name = L"TabPersonnel";
			this->TabPersonnel->SelectedIndex = 0;
			this->TabPersonnel->Size = System::Drawing::Size(1148, 328);
			this->TabPersonnel->TabIndex = 0;
			// 
			// PersonnelCréer
			// 
			this->PersonnelCréer->Controls->Add(this->label37);
			this->PersonnelCréer->Controls->Add(this->listBox1);
			this->PersonnelCréer->Controls->Add(this->button10);
			this->PersonnelCréer->Controls->Add(this->InputIDVillePersonnel);
			this->PersonnelCréer->Controls->Add(this->InputNumeroRuePersonnel);
			this->PersonnelCréer->Controls->Add(this->InputNomRuePersonnel);
			this->PersonnelCréer->Controls->Add(this->InputDateEmbauchePersonnel);
			this->PersonnelCréer->Controls->Add(this->InputDateDeNaissancePersonnel);
			this->PersonnelCréer->Controls->Add(this->InputPreomPersonnel);
			this->PersonnelCréer->Controls->Add(this->InputNomPersonnel);
			this->PersonnelCréer->Controls->Add(this->IDVille);
			this->PersonnelCréer->Controls->Add(this->NomRue);
			this->PersonnelCréer->Controls->Add(this->NumeroRue);
			this->PersonnelCréer->Controls->Add(this->DateNaissance);
			this->PersonnelCréer->Controls->Add(this->DateEmbauche);
			this->PersonnelCréer->Controls->Add(this->Prenom);
			this->PersonnelCréer->Controls->Add(this->NomPersonnel);
			this->PersonnelCréer->Controls->Add(this->ValiderCreerPersonnel);
			this->PersonnelCréer->Location = System::Drawing::Point(4, 25);
			this->PersonnelCréer->Name = L"PersonnelCréer";
			this->PersonnelCréer->Padding = System::Windows::Forms::Padding(3);
			this->PersonnelCréer->Size = System::Drawing::Size(1140, 299);
			this->PersonnelCréer->TabIndex = 0;
			this->PersonnelCréer->Text = L"Créer";
			this->PersonnelCréer->UseVisualStyleBackColor = true;
			// 
			// label37
			// 
			this->label37->AutoSize = true;
			this->label37->Location = System::Drawing::Point(598, 31);
			this->label37->Name = L"label37";
			this->label37->Size = System::Drawing::Size(34, 17);
			this->label37->TabIndex = 38;
			this->label37->Text = L"Ville";
			// 
			// listBox1
			// 
			this->listBox1->FormattingEnabled = true;
			this->listBox1->ItemHeight = 16;
			this->listBox1->Items->AddRange(gcnew cli::array< System::Object^  >(14) {
				L"1 Saint-Nazaire", L"2 Nantes", L"3 Paris", L"4 Guerande",
					L"5 Lyon", L"6 Marseille\t", L"7 Lille", L"8 Bordeaux\t", L"9 Toulouse\t", L"10 Nice", L"11 Madrid", L"12 Berlin", L"13 Londres",
					L"14 Bruxelles"
			});
			this->listBox1->Location = System::Drawing::Point(601, 51);
			this->listBox1->Name = L"listBox1";
			this->listBox1->Size = System::Drawing::Size(533, 196);
			this->listBox1->TabIndex = 37;
			// 
			// button10
			// 
			this->button10->Location = System::Drawing::Point(1052, 6);
			this->button10->Name = L"button10";
			this->button10->Size = System::Drawing::Size(82, 23);
			this->button10->TabIndex = 19;
			this->button10->Text = L"Rafraichir";
			this->button10->UseVisualStyleBackColor = true;
			this->button10->Click += gcnew System::EventHandler(this, &MyForm::button10_Click);
			// 
			// InputIDVillePersonnel
			// 
			this->InputIDVillePersonnel->Location = System::Drawing::Point(350, 153);
			this->InputIDVillePersonnel->Name = L"InputIDVillePersonnel";
			this->InputIDVillePersonnel->Size = System::Drawing::Size(178, 22);
			this->InputIDVillePersonnel->TabIndex = 18;
			// 
			// InputNumeroRuePersonnel
			// 
			this->InputNumeroRuePersonnel->Location = System::Drawing::Point(350, 103);
			this->InputNumeroRuePersonnel->Name = L"InputNumeroRuePersonnel";
			this->InputNumeroRuePersonnel->Size = System::Drawing::Size(178, 22);
			this->InputNumeroRuePersonnel->TabIndex = 17;
			// 
			// InputNomRuePersonnel
			// 
			this->InputNomRuePersonnel->Location = System::Drawing::Point(350, 53);
			this->InputNomRuePersonnel->Name = L"InputNomRuePersonnel";
			this->InputNomRuePersonnel->Size = System::Drawing::Size(178, 22);
			this->InputNomRuePersonnel->TabIndex = 16;
			// 
			// InputDateEmbauchePersonnel
			// 
			this->InputDateEmbauchePersonnel->Location = System::Drawing::Point(50, 203);
			this->InputDateEmbauchePersonnel->Name = L"InputDateEmbauchePersonnel";
			this->InputDateEmbauchePersonnel->Size = System::Drawing::Size(178, 22);
			this->InputDateEmbauchePersonnel->TabIndex = 14;
			// 
			// InputDateDeNaissancePersonnel
			// 
			this->InputDateDeNaissancePersonnel->Location = System::Drawing::Point(50, 153);
			this->InputDateDeNaissancePersonnel->Name = L"InputDateDeNaissancePersonnel";
			this->InputDateDeNaissancePersonnel->Size = System::Drawing::Size(178, 22);
			this->InputDateDeNaissancePersonnel->TabIndex = 13;
			// 
			// InputPreomPersonnel
			// 
			this->InputPreomPersonnel->Location = System::Drawing::Point(50, 103);
			this->InputPreomPersonnel->Name = L"InputPreomPersonnel";
			this->InputPreomPersonnel->Size = System::Drawing::Size(178, 22);
			this->InputPreomPersonnel->TabIndex = 12;
			// 
			// InputNomPersonnel
			// 
			this->InputNomPersonnel->Location = System::Drawing::Point(50, 53);
			this->InputNomPersonnel->Name = L"InputNomPersonnel";
			this->InputNomPersonnel->Size = System::Drawing::Size(178, 22);
			this->InputNomPersonnel->TabIndex = 11;
			// 
			// IDVille
			// 
			this->IDVille->AutoSize = true;
			this->IDVille->Location = System::Drawing::Point(350, 133);
			this->IDVille->Name = L"IDVille";
			this->IDVille->Size = System::Drawing::Size(84, 17);
			this->IDVille->TabIndex = 9;
			this->IDVille->Text = L"ID de la ville";
			// 
			// NomRue
			// 
			this->NomRue->AutoSize = true;
			this->NomRue->Location = System::Drawing::Point(350, 33);
			this->NomRue->Name = L"NomRue";
			this->NomRue->Size = System::Drawing::Size(97, 17);
			this->NomRue->TabIndex = 8;
			this->NomRue->Text = L"Nom de la rue";
			// 
			// NumeroRue
			// 
			this->NumeroRue->AutoSize = true;
			this->NumeroRue->Location = System::Drawing::Point(350, 83);
			this->NumeroRue->Name = L"NumeroRue";
			this->NumeroRue->Size = System::Drawing::Size(118, 17);
			this->NumeroRue->TabIndex = 7;
			this->NumeroRue->Text = L"Numero de la rue";
			// 
			// DateNaissance
			// 
			this->DateNaissance->AutoSize = true;
			this->DateNaissance->Location = System::Drawing::Point(50, 133);
			this->DateNaissance->Name = L"DateNaissance";
			this->DateNaissance->Size = System::Drawing::Size(126, 17);
			this->DateNaissance->TabIndex = 5;
			this->DateNaissance->Text = L"Date de naissance";
			// 
			// DateEmbauche
			// 
			this->DateEmbauche->AutoSize = true;
			this->DateEmbauche->Location = System::Drawing::Point(50, 183);
			this->DateEmbauche->Name = L"DateEmbauche";
			this->DateEmbauche->Size = System::Drawing::Size(119, 17);
			this->DateEmbauche->TabIndex = 4;
			this->DateEmbauche->Text = L"Date d\'embauche";
			// 
			// Prenom
			// 
			this->Prenom->AutoSize = true;
			this->Prenom->Location = System::Drawing::Point(50, 83);
			this->Prenom->Name = L"Prenom";
			this->Prenom->Size = System::Drawing::Size(57, 17);
			this->Prenom->TabIndex = 3;
			this->Prenom->Text = L"Prenom";
			// 
			// NomPersonnel
			// 
			this->NomPersonnel->AutoSize = true;
			this->NomPersonnel->Location = System::Drawing::Point(50, 33);
			this->NomPersonnel->Name = L"NomPersonnel";
			this->NomPersonnel->Size = System::Drawing::Size(37, 17);
			this->NomPersonnel->TabIndex = 2;
			this->NomPersonnel->Text = L"Nom";
			// 
			// ValiderCreerPersonnel
			// 
			this->ValiderCreerPersonnel->Location = System::Drawing::Point(1039, 253);
			this->ValiderCreerPersonnel->Name = L"ValiderCreerPersonnel";
			this->ValiderCreerPersonnel->Size = System::Drawing::Size(95, 40);
			this->ValiderCreerPersonnel->TabIndex = 1;
			this->ValiderCreerPersonnel->Text = L"Valider";
			this->ValiderCreerPersonnel->UseVisualStyleBackColor = true;
			this->ValiderCreerPersonnel->Click += gcnew System::EventHandler(this, &MyForm::button1_Click);
			// 
			// PersonnelModifier
			// 
			this->PersonnelModifier->Controls->Add(this->ChercherPersonnel);
			this->PersonnelModifier->Controls->Add(this->button1);
			this->PersonnelModifier->Controls->Add(this->ModifIDPersonnel);
			this->PersonnelModifier->Controls->Add(this->label8);
			this->PersonnelModifier->Controls->Add(this->ModifIDVillePersonnel);
			this->PersonnelModifier->Controls->Add(this->ModifNumeroRuePersonnel);
			this->PersonnelModifier->Controls->Add(this->ModifNomRuePersonnel);
			this->PersonnelModifier->Controls->Add(this->ModifDateEmbauchePersonnel);
			this->PersonnelModifier->Controls->Add(this->ModifDateNaissancePersonnel);
			this->PersonnelModifier->Controls->Add(this->ModifPrenomPersonnel);
			this->PersonnelModifier->Controls->Add(this->ModifNomPersonnel);
			this->PersonnelModifier->Controls->Add(this->IDVilleAff);
			this->PersonnelModifier->Controls->Add(this->NomRueAff);
			this->PersonnelModifier->Controls->Add(this->NumeroRueAff);
			this->PersonnelModifier->Controls->Add(this->NaissanceAff);
			this->PersonnelModifier->Controls->Add(this->EmbaucheAff);
			this->PersonnelModifier->Controls->Add(this->PrenomAff);
			this->PersonnelModifier->Controls->Add(this->NomAff);
			this->PersonnelModifier->Location = System::Drawing::Point(4, 25);
			this->PersonnelModifier->Name = L"PersonnelModifier";
			this->PersonnelModifier->Padding = System::Windows::Forms::Padding(3);
			this->PersonnelModifier->Size = System::Drawing::Size(1140, 299);
			this->PersonnelModifier->TabIndex = 1;
			this->PersonnelModifier->Text = L"Modifier";
			this->PersonnelModifier->UseVisualStyleBackColor = true;
			// 
			// ChercherPersonnel
			// 
			this->ChercherPersonnel->Location = System::Drawing::Point(50, 83);
			this->ChercherPersonnel->Name = L"ChercherPersonnel";
			this->ChercherPersonnel->Size = System::Drawing::Size(89, 42);
			this->ChercherPersonnel->TabIndex = 36;
			this->ChercherPersonnel->Text = L"Chercher";
			this->ChercherPersonnel->UseVisualStyleBackColor = true;
			this->ChercherPersonnel->Click += gcnew System::EventHandler(this, &MyForm::button2_Click);
			// 
			// button1
			// 
			this->button1->Location = System::Drawing::Point(1039, 253);
			this->button1->Name = L"button1";
			this->button1->Size = System::Drawing::Size(95, 40);
			this->button1->TabIndex = 35;
			this->button1->Text = L"Valider";
			this->button1->UseVisualStyleBackColor = true;
			this->button1->Click += gcnew System::EventHandler(this, &MyForm::button1_Click_1);
			// 
			// ModifIDPersonnel
			// 
			this->ModifIDPersonnel->Location = System::Drawing::Point(50, 53);
			this->ModifIDPersonnel->Name = L"ModifIDPersonnel";
			this->ModifIDPersonnel->Size = System::Drawing::Size(178, 22);
			this->ModifIDPersonnel->TabIndex = 34;
			// 
			// label8
			// 
			this->label8->AutoSize = true;
			this->label8->Location = System::Drawing::Point(50, 33);
			this->label8->Name = L"label8";
			this->label8->Size = System::Drawing::Size(89, 17);
			this->label8->TabIndex = 33;
			this->label8->Text = L"ID Personnel";
			// 
			// ModifIDVillePersonnel
			// 
			this->ModifIDVillePersonnel->Location = System::Drawing::Point(650, 153);
			this->ModifIDVillePersonnel->Name = L"ModifIDVillePersonnel";
			this->ModifIDVillePersonnel->Size = System::Drawing::Size(178, 22);
			this->ModifIDVillePersonnel->TabIndex = 32;
			this->ModifIDVillePersonnel->Visible = false;
			// 
			// ModifNumeroRuePersonnel
			// 
			this->ModifNumeroRuePersonnel->Location = System::Drawing::Point(650, 103);
			this->ModifNumeroRuePersonnel->Name = L"ModifNumeroRuePersonnel";
			this->ModifNumeroRuePersonnel->Size = System::Drawing::Size(178, 22);
			this->ModifNumeroRuePersonnel->TabIndex = 31;
			this->ModifNumeroRuePersonnel->Visible = false;
			// 
			// ModifNomRuePersonnel
			// 
			this->ModifNomRuePersonnel->Location = System::Drawing::Point(650, 53);
			this->ModifNomRuePersonnel->Name = L"ModifNomRuePersonnel";
			this->ModifNomRuePersonnel->Size = System::Drawing::Size(178, 22);
			this->ModifNomRuePersonnel->TabIndex = 30;
			this->ModifNomRuePersonnel->Visible = false;
			// 
			// ModifDateEmbauchePersonnel
			// 
			this->ModifDateEmbauchePersonnel->Location = System::Drawing::Point(350, 203);
			this->ModifDateEmbauchePersonnel->Name = L"ModifDateEmbauchePersonnel";
			this->ModifDateEmbauchePersonnel->Size = System::Drawing::Size(178, 22);
			this->ModifDateEmbauchePersonnel->TabIndex = 29;
			this->ModifDateEmbauchePersonnel->Visible = false;
			// 
			// ModifDateNaissancePersonnel
			// 
			this->ModifDateNaissancePersonnel->Location = System::Drawing::Point(350, 153);
			this->ModifDateNaissancePersonnel->Name = L"ModifDateNaissancePersonnel";
			this->ModifDateNaissancePersonnel->Size = System::Drawing::Size(178, 22);
			this->ModifDateNaissancePersonnel->TabIndex = 28;
			this->ModifDateNaissancePersonnel->Visible = false;
			// 
			// ModifPrenomPersonnel
			// 
			this->ModifPrenomPersonnel->Location = System::Drawing::Point(350, 103);
			this->ModifPrenomPersonnel->Name = L"ModifPrenomPersonnel";
			this->ModifPrenomPersonnel->Size = System::Drawing::Size(178, 22);
			this->ModifPrenomPersonnel->TabIndex = 27;
			this->ModifPrenomPersonnel->Visible = false;
			// 
			// ModifNomPersonnel
			// 
			this->ModifNomPersonnel->Location = System::Drawing::Point(350, 53);
			this->ModifNomPersonnel->Name = L"ModifNomPersonnel";
			this->ModifNomPersonnel->Size = System::Drawing::Size(178, 22);
			this->ModifNomPersonnel->TabIndex = 26;
			this->ModifNomPersonnel->Visible = false;
			// 
			// IDVilleAff
			// 
			this->IDVilleAff->AutoSize = true;
			this->IDVilleAff->Location = System::Drawing::Point(650, 133);
			this->IDVilleAff->Name = L"IDVilleAff";
			this->IDVilleAff->Size = System::Drawing::Size(84, 17);
			this->IDVilleAff->TabIndex = 25;
			this->IDVilleAff->Text = L"ID de la ville";
			this->IDVilleAff->Visible = false;
			// 
			// NomRueAff
			// 
			this->NomRueAff->AutoSize = true;
			this->NomRueAff->Location = System::Drawing::Point(650, 33);
			this->NomRueAff->Name = L"NomRueAff";
			this->NomRueAff->Size = System::Drawing::Size(97, 17);
			this->NomRueAff->TabIndex = 24;
			this->NomRueAff->Text = L"Nom de la rue";
			this->NomRueAff->Visible = false;
			// 
			// NumeroRueAff
			// 
			this->NumeroRueAff->AutoSize = true;
			this->NumeroRueAff->Location = System::Drawing::Point(650, 83);
			this->NumeroRueAff->Name = L"NumeroRueAff";
			this->NumeroRueAff->Size = System::Drawing::Size(118, 17);
			this->NumeroRueAff->TabIndex = 23;
			this->NumeroRueAff->Text = L"Numero de la rue";
			this->NumeroRueAff->Visible = false;
			// 
			// NaissanceAff
			// 
			this->NaissanceAff->AutoSize = true;
			this->NaissanceAff->Location = System::Drawing::Point(350, 133);
			this->NaissanceAff->Name = L"NaissanceAff";
			this->NaissanceAff->Size = System::Drawing::Size(126, 17);
			this->NaissanceAff->TabIndex = 22;
			this->NaissanceAff->Text = L"Date de naissance";
			this->NaissanceAff->Visible = false;
			// 
			// EmbaucheAff
			// 
			this->EmbaucheAff->AutoSize = true;
			this->EmbaucheAff->Location = System::Drawing::Point(350, 183);
			this->EmbaucheAff->Name = L"EmbaucheAff";
			this->EmbaucheAff->Size = System::Drawing::Size(119, 17);
			this->EmbaucheAff->TabIndex = 21;
			this->EmbaucheAff->Text = L"Date d\'embauche";
			this->EmbaucheAff->Visible = false;
			// 
			// PrenomAff
			// 
			this->PrenomAff->AutoSize = true;
			this->PrenomAff->Location = System::Drawing::Point(350, 83);
			this->PrenomAff->Name = L"PrenomAff";
			this->PrenomAff->Size = System::Drawing::Size(57, 17);
			this->PrenomAff->TabIndex = 20;
			this->PrenomAff->Text = L"Prenom";
			this->PrenomAff->Visible = false;
			// 
			// NomAff
			// 
			this->NomAff->AutoSize = true;
			this->NomAff->Location = System::Drawing::Point(350, 33);
			this->NomAff->Name = L"NomAff";
			this->NomAff->Size = System::Drawing::Size(37, 17);
			this->NomAff->TabIndex = 19;
			this->NomAff->Text = L"Nom";
			this->NomAff->Visible = false;
			// 
			// PersonnelAfficher
			// 
			this->PersonnelAfficher->Controls->Add(this->ChercherNom);
			this->PersonnelAfficher->Controls->Add(this->InputChercheNomVille);
			this->PersonnelAfficher->Controls->Add(this->InputChercheNomRue);
			this->PersonnelAfficher->Controls->Add(this->InputCherchePrenom);
			this->PersonnelAfficher->Controls->Add(this->InputChercheNom);
			this->PersonnelAfficher->Controls->Add(this->label1);
			this->PersonnelAfficher->Controls->Add(this->label2);
			this->PersonnelAfficher->Controls->Add(this->label3);
			this->PersonnelAfficher->Controls->Add(this->label4);
			this->PersonnelAfficher->Location = System::Drawing::Point(4, 25);
			this->PersonnelAfficher->Name = L"PersonnelAfficher";
			this->PersonnelAfficher->Padding = System::Windows::Forms::Padding(3);
			this->PersonnelAfficher->Size = System::Drawing::Size(1140, 299);
			this->PersonnelAfficher->TabIndex = 2;
			this->PersonnelAfficher->Text = L"Afficher";
			this->PersonnelAfficher->UseVisualStyleBackColor = true;
			// 
			// ChercherNom
			// 
			this->ChercherNom->Location = System::Drawing::Point(323, 121);
			this->ChercherNom->Name = L"ChercherNom";
			this->ChercherNom->Size = System::Drawing::Size(95, 40);
			this->ChercherNom->TabIndex = 23;
			this->ChercherNom->Text = L"Chercher";
			this->ChercherNom->UseVisualStyleBackColor = true;
			this->ChercherNom->Click += gcnew System::EventHandler(this, &MyForm::ChercherNom_Click);
			// 
			// InputChercheNomVille
			// 
			this->InputChercheNomVille->Location = System::Drawing::Point(50, 203);
			this->InputChercheNomVille->Name = L"InputChercheNomVille";
			this->InputChercheNomVille->Size = System::Drawing::Size(178, 22);
			this->InputChercheNomVille->TabIndex = 22;
			// 
			// InputChercheNomRue
			// 
			this->InputChercheNomRue->Location = System::Drawing::Point(50, 153);
			this->InputChercheNomRue->Name = L"InputChercheNomRue";
			this->InputChercheNomRue->Size = System::Drawing::Size(178, 22);
			this->InputChercheNomRue->TabIndex = 21;
			// 
			// InputCherchePrenom
			// 
			this->InputCherchePrenom->Location = System::Drawing::Point(50, 103);
			this->InputCherchePrenom->Name = L"InputCherchePrenom";
			this->InputCherchePrenom->Size = System::Drawing::Size(178, 22);
			this->InputCherchePrenom->TabIndex = 20;
			// 
			// InputChercheNom
			// 
			this->InputChercheNom->Location = System::Drawing::Point(50, 53);
			this->InputChercheNom->Name = L"InputChercheNom";
			this->InputChercheNom->Size = System::Drawing::Size(178, 22);
			this->InputChercheNom->TabIndex = 19;
			// 
			// label1
			// 
			this->label1->AutoSize = true;
			this->label1->Location = System::Drawing::Point(50, 133);
			this->label1->Name = L"label1";
			this->label1->Size = System::Drawing::Size(97, 17);
			this->label1->TabIndex = 18;
			this->label1->Text = L"Nom de la rue";
			// 
			// label2
			// 
			this->label2->AutoSize = true;
			this->label2->Location = System::Drawing::Point(50, 183);
			this->label2->Name = L"label2";
			this->label2->Size = System::Drawing::Size(100, 17);
			this->label2->TabIndex = 17;
			this->label2->Text = L"Nom de la ville";
			// 
			// label3
			// 
			this->label3->AutoSize = true;
			this->label3->Location = System::Drawing::Point(50, 83);
			this->label3->Name = L"label3";
			this->label3->Size = System::Drawing::Size(57, 17);
			this->label3->TabIndex = 16;
			this->label3->Text = L"Prenom";
			this->label3->Click += gcnew System::EventHandler(this, &MyForm::label3_Click);
			// 
			// label4
			// 
			this->label4->AutoSize = true;
			this->label4->Location = System::Drawing::Point(50, 33);
			this->label4->Name = L"label4";
			this->label4->Size = System::Drawing::Size(37, 17);
			this->label4->TabIndex = 15;
			this->label4->Text = L"Nom";
			// 
			// PersonnelSupprimer
			// 
			this->PersonnelSupprimer->Controls->Add(this->ValiderDeletePersonnel);
			this->PersonnelSupprimer->Controls->Add(this->InputDeletePersonnel);
			this->PersonnelSupprimer->Controls->Add(this->IDDeletePersonnel);
			this->PersonnelSupprimer->Location = System::Drawing::Point(4, 25);
			this->PersonnelSupprimer->Name = L"PersonnelSupprimer";
			this->PersonnelSupprimer->Size = System::Drawing::Size(1140, 299);
			this->PersonnelSupprimer->TabIndex = 0;
			this->PersonnelSupprimer->Text = L"Supprimer";
			this->PersonnelSupprimer->UseVisualStyleBackColor = true;
			// 
			// ValiderDeletePersonnel
			// 
			this->ValiderDeletePersonnel->Location = System::Drawing::Point(1039, 253);
			this->ValiderDeletePersonnel->Name = L"ValiderDeletePersonnel";
			this->ValiderDeletePersonnel->Size = System::Drawing::Size(95, 40);
			this->ValiderDeletePersonnel->TabIndex = 2;
			this->ValiderDeletePersonnel->Text = L"Valider";
			this->ValiderDeletePersonnel->UseVisualStyleBackColor = true;
			this->ValiderDeletePersonnel->Click += gcnew System::EventHandler(this, &MyForm::ValiderDeletePersonnel_Click);
			// 
			// InputDeletePersonnel
			// 
			this->InputDeletePersonnel->Location = System::Drawing::Point(453, 109);
			this->InputDeletePersonnel->Name = L"InputDeletePersonnel";
			this->InputDeletePersonnel->Size = System::Drawing::Size(100, 22);
			this->InputDeletePersonnel->TabIndex = 1;
			this->InputDeletePersonnel->TextChanged += gcnew System::EventHandler(this, &MyForm::textBox1_TextChanged);
			// 
			// IDDeletePersonnel
			// 
			this->IDDeletePersonnel->AutoSize = true;
			this->IDDeletePersonnel->Location = System::Drawing::Point(450, 89);
			this->IDDeletePersonnel->Name = L"IDDeletePersonnel";
			this->IDDeletePersonnel->Size = System::Drawing::Size(108, 17);
			this->IDDeletePersonnel->TabIndex = 0;
			this->IDDeletePersonnel->Text = L"ID du personnel";
			this->IDDeletePersonnel->Click += gcnew System::EventHandler(this, &MyForm::label1_Click);
			// 
			// GridViewCréerPersonnel
			// 
			this->GridViewCréerPersonnel->ColumnHeadersHeightSizeMode = System::Windows::Forms::DataGridViewColumnHeadersHeightSizeMode::AutoSize;
			this->GridViewCréerPersonnel->Location = System::Drawing::Point(8, 6);
			this->GridViewCréerPersonnel->Name = L"GridViewCréerPersonnel";
			this->GridViewCréerPersonnel->RowHeadersWidth = 51;
			this->GridViewCréerPersonnel->RowTemplate->Height = 24;
			this->GridViewCréerPersonnel->Size = System::Drawing::Size(1139, 273);
			this->GridViewCréerPersonnel->TabIndex = 0;
			// 
			// MainClient
			// 
			this->MainClient->Controls->Add(this->GridViewCréerClient);
			this->MainClient->Controls->Add(this->TabClient);
			this->MainClient->Location = System::Drawing::Point(4, 25);
			this->MainClient->Name = L"MainClient";
			this->MainClient->Padding = System::Windows::Forms::Padding(3);
			this->MainClient->Size = System::Drawing::Size(1154, 616);
			this->MainClient->TabIndex = 1;
			this->MainClient->Text = L"Client";
			this->MainClient->UseVisualStyleBackColor = true;
			// 
			// GridViewCréerClient
			// 
			this->GridViewCréerClient->ColumnHeadersHeightSizeMode = System::Windows::Forms::DataGridViewColumnHeadersHeightSizeMode::AutoSize;
			this->GridViewCréerClient->Location = System::Drawing::Point(8, 6);
			this->GridViewCréerClient->Name = L"GridViewCréerClient";
			this->GridViewCréerClient->RowHeadersWidth = 51;
			this->GridViewCréerClient->RowTemplate->Height = 24;
			this->GridViewCréerClient->Size = System::Drawing::Size(1139, 273);
			this->GridViewCréerClient->TabIndex = 1;
			// 
			// TabClient
			// 
			this->TabClient->Controls->Add(this->ClientCréer);
			this->TabClient->Controls->Add(this->ClientModifier);
			this->TabClient->Controls->Add(this->ClientAfficher);
			this->TabClient->Controls->Add(this->ClientSupprimer);
			this->TabClient->Location = System::Drawing::Point(3, 285);
			this->TabClient->Name = L"TabClient";
			this->TabClient->SelectedIndex = 0;
			this->TabClient->Size = System::Drawing::Size(1148, 328);
			this->TabClient->TabIndex = 0;
			// 
			// ClientCréer
			// 
			this->ClientCréer->Controls->Add(this->label58);
			this->ClientCréer->Controls->Add(this->listBox2);
			this->ClientCréer->Controls->Add(this->button11);
			this->ClientCréer->Controls->Add(this->label10);
			this->ClientCréer->Controls->Add(this->ChoixTypeClient);
			this->ClientCréer->Controls->Add(this->IDVilleClient);
			this->ClientCréer->Controls->Add(this->InputNumeroRueClient);
			this->ClientCréer->Controls->Add(this->InputNomRueClient);
			this->ClientCréer->Controls->Add(this->InputNaissanceClient);
			this->ClientCréer->Controls->Add(this->InputPrenomClient);
			this->ClientCréer->Controls->Add(this->InputNomClient);
			this->ClientCréer->Controls->Add(this->label5);
			this->ClientCréer->Controls->Add(this->label6);
			this->ClientCréer->Controls->Add(this->label7);
			this->ClientCréer->Controls->Add(this->label9);
			this->ClientCréer->Controls->Add(this->label11);
			this->ClientCréer->Controls->Add(this->label12);
			this->ClientCréer->Controls->Add(this->button2);
			this->ClientCréer->Location = System::Drawing::Point(4, 25);
			this->ClientCréer->Name = L"ClientCréer";
			this->ClientCréer->Padding = System::Windows::Forms::Padding(3);
			this->ClientCréer->Size = System::Drawing::Size(1140, 299);
			this->ClientCréer->TabIndex = 0;
			this->ClientCréer->Text = L"Créer";
			this->ClientCréer->UseVisualStyleBackColor = true;
			// 
			// button11
			// 
			this->button11->Location = System::Drawing::Point(1052, 6);
			this->button11->Name = L"button11";
			this->button11->Size = System::Drawing::Size(82, 23);
			this->button11->TabIndex = 36;
			this->button11->Text = L"Rafraichir";
			this->button11->UseVisualStyleBackColor = true;
			this->button11->Click += gcnew System::EventHandler(this, &MyForm::button11_Click);
			// 
			// label10
			// 
			this->label10->AutoSize = true;
			this->label10->Location = System::Drawing::Point(350, 183);
			this->label10->Name = L"label10";
			this->label10->Size = System::Drawing::Size(106, 17);
			this->label10->TabIndex = 35;
			this->label10->Text = L"Type d\'adresse";
			// 
			// ChoixTypeClient
			// 
			this->ChoixTypeClient->FormattingEnabled = true;
			this->ChoixTypeClient->Items->AddRange(gcnew cli::array< System::Object^  >(3) { L"Fact", L"Livr", L"Both" });
			this->ChoixTypeClient->Location = System::Drawing::Point(350, 203);
			this->ChoixTypeClient->Name = L"ChoixTypeClient";
			this->ChoixTypeClient->Size = System::Drawing::Size(121, 24);
			this->ChoixTypeClient->TabIndex = 34;
			// 
			// IDVilleClient
			// 
			this->IDVilleClient->Location = System::Drawing::Point(350, 153);
			this->IDVilleClient->Name = L"IDVilleClient";
			this->IDVilleClient->Size = System::Drawing::Size(178, 22);
			this->IDVilleClient->TabIndex = 33;
			// 
			// InputNumeroRueClient
			// 
			this->InputNumeroRueClient->Location = System::Drawing::Point(350, 103);
			this->InputNumeroRueClient->Name = L"InputNumeroRueClient";
			this->InputNumeroRueClient->Size = System::Drawing::Size(178, 22);
			this->InputNumeroRueClient->TabIndex = 32;
			// 
			// InputNomRueClient
			// 
			this->InputNomRueClient->Location = System::Drawing::Point(350, 53);
			this->InputNomRueClient->Name = L"InputNomRueClient";
			this->InputNomRueClient->Size = System::Drawing::Size(178, 22);
			this->InputNomRueClient->TabIndex = 31;
			// 
			// InputNaissanceClient
			// 
			this->InputNaissanceClient->Location = System::Drawing::Point(50, 153);
			this->InputNaissanceClient->Name = L"InputNaissanceClient";
			this->InputNaissanceClient->Size = System::Drawing::Size(178, 22);
			this->InputNaissanceClient->TabIndex = 29;
			// 
			// InputPrenomClient
			// 
			this->InputPrenomClient->Location = System::Drawing::Point(50, 103);
			this->InputPrenomClient->Name = L"InputPrenomClient";
			this->InputPrenomClient->Size = System::Drawing::Size(178, 22);
			this->InputPrenomClient->TabIndex = 28;
			// 
			// InputNomClient
			// 
			this->InputNomClient->Location = System::Drawing::Point(50, 53);
			this->InputNomClient->Name = L"InputNomClient";
			this->InputNomClient->Size = System::Drawing::Size(178, 22);
			this->InputNomClient->TabIndex = 27;
			// 
			// label5
			// 
			this->label5->AutoSize = true;
			this->label5->Location = System::Drawing::Point(350, 133);
			this->label5->Name = L"label5";
			this->label5->Size = System::Drawing::Size(84, 17);
			this->label5->TabIndex = 26;
			this->label5->Text = L"ID de la ville";
			// 
			// label6
			// 
			this->label6->AutoSize = true;
			this->label6->Location = System::Drawing::Point(350, 33);
			this->label6->Name = L"label6";
			this->label6->Size = System::Drawing::Size(97, 17);
			this->label6->TabIndex = 25;
			this->label6->Text = L"Nom de la rue";
			// 
			// label7
			// 
			this->label7->AutoSize = true;
			this->label7->Location = System::Drawing::Point(350, 83);
			this->label7->Name = L"label7";
			this->label7->Size = System::Drawing::Size(118, 17);
			this->label7->TabIndex = 24;
			this->label7->Text = L"Numero de la rue";
			// 
			// label9
			// 
			this->label9->AutoSize = true;
			this->label9->Location = System::Drawing::Point(50, 133);
			this->label9->Name = L"label9";
			this->label9->Size = System::Drawing::Size(126, 17);
			this->label9->TabIndex = 23;
			this->label9->Text = L"Date de naissance";
			// 
			// label11
			// 
			this->label11->AutoSize = true;
			this->label11->Location = System::Drawing::Point(50, 83);
			this->label11->Name = L"label11";
			this->label11->Size = System::Drawing::Size(57, 17);
			this->label11->TabIndex = 21;
			this->label11->Text = L"Prenom";
			// 
			// label12
			// 
			this->label12->AutoSize = true;
			this->label12->Location = System::Drawing::Point(50, 33);
			this->label12->Name = L"label12";
			this->label12->Size = System::Drawing::Size(37, 17);
			this->label12->TabIndex = 20;
			this->label12->Text = L"Nom";
			// 
			// button2
			// 
			this->button2->Location = System::Drawing::Point(1039, 253);
			this->button2->Name = L"button2";
			this->button2->Size = System::Drawing::Size(95, 40);
			this->button2->TabIndex = 19;
			this->button2->Text = L"Valider";
			this->button2->UseVisualStyleBackColor = true;
			this->button2->Click += gcnew System::EventHandler(this, &MyForm::button2_Click_1);
			// 
			// ClientModifier
			// 
			this->ClientModifier->Controls->Add(this->button4);
			this->ClientModifier->Controls->Add(this->ModifTypeAdresseClient);
			this->ClientModifier->Controls->Add(this->button3);
			this->ClientModifier->Controls->Add(this->InputModifIDClient);
			this->ClientModifier->Controls->Add(this->label13);
			this->ClientModifier->Controls->Add(this->ModifIDVilleClient);
			this->ClientModifier->Controls->Add(this->ModifNumeroRueClient);
			this->ClientModifier->Controls->Add(this->ModifNomRueClient);
			this->ClientModifier->Controls->Add(this->ModifNaissanceClient);
			this->ClientModifier->Controls->Add(this->ModifPrenomClient);
			this->ClientModifier->Controls->Add(this->ModifNomClient);
			this->ClientModifier->Controls->Add(this->TypeAdresseModifClient);
			this->ClientModifier->Controls->Add(this->NumeroRueModifClient);
			this->ClientModifier->Controls->Add(this->IDVilleModifClient);
			this->ClientModifier->Controls->Add(this->NaissanceModifClient);
			this->ClientModifier->Controls->Add(this->NomRueModifClient);
			this->ClientModifier->Controls->Add(this->PrenomModifClient);
			this->ClientModifier->Controls->Add(this->NomModifClient);
			this->ClientModifier->Location = System::Drawing::Point(4, 25);
			this->ClientModifier->Name = L"ClientModifier";
			this->ClientModifier->Padding = System::Windows::Forms::Padding(3);
			this->ClientModifier->Size = System::Drawing::Size(1140, 299);
			this->ClientModifier->TabIndex = 1;
			this->ClientModifier->Text = L"Modifier";
			this->ClientModifier->UseVisualStyleBackColor = true;
			// 
			// button4
			// 
			this->button4->Location = System::Drawing::Point(1039, 253);
			this->button4->Name = L"button4";
			this->button4->Size = System::Drawing::Size(95, 40);
			this->button4->TabIndex = 55;
			this->button4->Text = L"Valider";
			this->button4->UseVisualStyleBackColor = true;
			this->button4->Click += gcnew System::EventHandler(this, &MyForm::button4_Click);
			// 
			// ModifTypeAdresseClient
			// 
			this->ModifTypeAdresseClient->FormattingEnabled = true;
			this->ModifTypeAdresseClient->Items->AddRange(gcnew cli::array< System::Object^  >(3) { L"Fact", L"Livr", L"Both" });
			this->ModifTypeAdresseClient->Location = System::Drawing::Point(650, 153);
			this->ModifTypeAdresseClient->Name = L"ModifTypeAdresseClient";
			this->ModifTypeAdresseClient->Size = System::Drawing::Size(121, 24);
			this->ModifTypeAdresseClient->TabIndex = 54;
			this->ModifTypeAdresseClient->Visible = false;
			// 
			// button3
			// 
			this->button3->Location = System::Drawing::Point(50, 83);
			this->button3->Name = L"button3";
			this->button3->Size = System::Drawing::Size(89, 42);
			this->button3->TabIndex = 53;
			this->button3->Text = L"Chercher";
			this->button3->UseVisualStyleBackColor = true;
			this->button3->Click += gcnew System::EventHandler(this, &MyForm::button3_Click);
			// 
			// InputModifIDClient
			// 
			this->InputModifIDClient->Location = System::Drawing::Point(50, 53);
			this->InputModifIDClient->Name = L"InputModifIDClient";
			this->InputModifIDClient->Size = System::Drawing::Size(178, 22);
			this->InputModifIDClient->TabIndex = 52;
			// 
			// label13
			// 
			this->label13->AutoSize = true;
			this->label13->Location = System::Drawing::Point(50, 33);
			this->label13->Name = L"label13";
			this->label13->Size = System::Drawing::Size(60, 17);
			this->label13->TabIndex = 51;
			this->label13->Text = L"ID Client";
			// 
			// ModifIDVilleClient
			// 
			this->ModifIDVilleClient->Location = System::Drawing::Point(650, 103);
			this->ModifIDVilleClient->Name = L"ModifIDVilleClient";
			this->ModifIDVilleClient->Size = System::Drawing::Size(178, 22);
			this->ModifIDVilleClient->TabIndex = 49;
			this->ModifIDVilleClient->Visible = false;
			// 
			// ModifNumeroRueClient
			// 
			this->ModifNumeroRueClient->Location = System::Drawing::Point(650, 53);
			this->ModifNumeroRueClient->Name = L"ModifNumeroRueClient";
			this->ModifNumeroRueClient->Size = System::Drawing::Size(178, 22);
			this->ModifNumeroRueClient->TabIndex = 48;
			this->ModifNumeroRueClient->Visible = false;
			// 
			// ModifNomRueClient
			// 
			this->ModifNomRueClient->Location = System::Drawing::Point(350, 203);
			this->ModifNomRueClient->Name = L"ModifNomRueClient";
			this->ModifNomRueClient->Size = System::Drawing::Size(178, 22);
			this->ModifNomRueClient->TabIndex = 47;
			this->ModifNomRueClient->Visible = false;
			// 
			// ModifNaissanceClient
			// 
			this->ModifNaissanceClient->Location = System::Drawing::Point(350, 153);
			this->ModifNaissanceClient->Name = L"ModifNaissanceClient";
			this->ModifNaissanceClient->Size = System::Drawing::Size(178, 22);
			this->ModifNaissanceClient->TabIndex = 46;
			this->ModifNaissanceClient->Visible = false;
			// 
			// ModifPrenomClient
			// 
			this->ModifPrenomClient->Location = System::Drawing::Point(350, 103);
			this->ModifPrenomClient->Name = L"ModifPrenomClient";
			this->ModifPrenomClient->Size = System::Drawing::Size(178, 22);
			this->ModifPrenomClient->TabIndex = 45;
			this->ModifPrenomClient->Visible = false;
			// 
			// ModifNomClient
			// 
			this->ModifNomClient->Location = System::Drawing::Point(350, 53);
			this->ModifNomClient->Name = L"ModifNomClient";
			this->ModifNomClient->Size = System::Drawing::Size(178, 22);
			this->ModifNomClient->TabIndex = 44;
			this->ModifNomClient->Visible = false;
			this->ModifNomClient->TextChanged += gcnew System::EventHandler(this, &MyForm::ModifNomClient_TextChanged);
			// 
			// TypeAdresseModifClient
			// 
			this->TypeAdresseModifClient->AutoSize = true;
			this->TypeAdresseModifClient->Location = System::Drawing::Point(650, 133);
			this->TypeAdresseModifClient->Name = L"TypeAdresseModifClient";
			this->TypeAdresseModifClient->Size = System::Drawing::Size(106, 17);
			this->TypeAdresseModifClient->TabIndex = 43;
			this->TypeAdresseModifClient->Text = L"Type d\'adresse";
			this->TypeAdresseModifClient->Visible = false;
			// 
			// NumeroRueModifClient
			// 
			this->NumeroRueModifClient->AutoSize = true;
			this->NumeroRueModifClient->Location = System::Drawing::Point(650, 33);
			this->NumeroRueModifClient->Name = L"NumeroRueModifClient";
			this->NumeroRueModifClient->Size = System::Drawing::Size(118, 17);
			this->NumeroRueModifClient->TabIndex = 42;
			this->NumeroRueModifClient->Text = L"Numero de la rue";
			this->NumeroRueModifClient->Visible = false;
			// 
			// IDVilleModifClient
			// 
			this->IDVilleModifClient->AutoSize = true;
			this->IDVilleModifClient->Location = System::Drawing::Point(650, 83);
			this->IDVilleModifClient->Name = L"IDVilleModifClient";
			this->IDVilleModifClient->Size = System::Drawing::Size(84, 17);
			this->IDVilleModifClient->TabIndex = 41;
			this->IDVilleModifClient->Text = L"ID de la ville";
			this->IDVilleModifClient->Visible = false;
			// 
			// NaissanceModifClient
			// 
			this->NaissanceModifClient->AutoSize = true;
			this->NaissanceModifClient->Location = System::Drawing::Point(350, 133);
			this->NaissanceModifClient->Name = L"NaissanceModifClient";
			this->NaissanceModifClient->Size = System::Drawing::Size(126, 17);
			this->NaissanceModifClient->TabIndex = 40;
			this->NaissanceModifClient->Text = L"Date de naissance";
			this->NaissanceModifClient->Visible = false;
			// 
			// NomRueModifClient
			// 
			this->NomRueModifClient->AutoSize = true;
			this->NomRueModifClient->Location = System::Drawing::Point(350, 183);
			this->NomRueModifClient->Name = L"NomRueModifClient";
			this->NomRueModifClient->Size = System::Drawing::Size(97, 17);
			this->NomRueModifClient->TabIndex = 39;
			this->NomRueModifClient->Text = L"Nom de la rue";
			this->NomRueModifClient->Visible = false;
			// 
			// PrenomModifClient
			// 
			this->PrenomModifClient->AutoSize = true;
			this->PrenomModifClient->Location = System::Drawing::Point(350, 83);
			this->PrenomModifClient->Name = L"PrenomModifClient";
			this->PrenomModifClient->Size = System::Drawing::Size(57, 17);
			this->PrenomModifClient->TabIndex = 38;
			this->PrenomModifClient->Text = L"Prenom";
			this->PrenomModifClient->Visible = false;
			// 
			// NomModifClient
			// 
			this->NomModifClient->AutoSize = true;
			this->NomModifClient->Location = System::Drawing::Point(350, 33);
			this->NomModifClient->Name = L"NomModifClient";
			this->NomModifClient->Size = System::Drawing::Size(37, 17);
			this->NomModifClient->TabIndex = 37;
			this->NomModifClient->Text = L"Nom";
			this->NomModifClient->Visible = false;
			// 
			// ClientAfficher
			// 
			this->ClientAfficher->Controls->Add(this->button5);
			this->ClientAfficher->Controls->Add(this->InputChercheNomVilleClient);
			this->ClientAfficher->Controls->Add(this->InputChercheNomRueClient);
			this->ClientAfficher->Controls->Add(this->InputCherchePrenomClient);
			this->ClientAfficher->Controls->Add(this->InputChercheNomClient);
			this->ClientAfficher->Controls->Add(this->label14);
			this->ClientAfficher->Controls->Add(this->label15);
			this->ClientAfficher->Controls->Add(this->label16);
			this->ClientAfficher->Controls->Add(this->label17);
			this->ClientAfficher->Location = System::Drawing::Point(4, 25);
			this->ClientAfficher->Name = L"ClientAfficher";
			this->ClientAfficher->Padding = System::Windows::Forms::Padding(3);
			this->ClientAfficher->Size = System::Drawing::Size(1140, 299);
			this->ClientAfficher->TabIndex = 2;
			this->ClientAfficher->Text = L"Afficher";
			this->ClientAfficher->UseVisualStyleBackColor = true;
			// 
			// button5
			// 
			this->button5->Location = System::Drawing::Point(323, 121);
			this->button5->Name = L"button5";
			this->button5->Size = System::Drawing::Size(95, 40);
			this->button5->TabIndex = 32;
			this->button5->Text = L"Chercher";
			this->button5->UseVisualStyleBackColor = true;
			this->button5->Click += gcnew System::EventHandler(this, &MyForm::button5_Click);
			// 
			// InputChercheNomVilleClient
			// 
			this->InputChercheNomVilleClient->Location = System::Drawing::Point(50, 203);
			this->InputChercheNomVilleClient->Name = L"InputChercheNomVilleClient";
			this->InputChercheNomVilleClient->Size = System::Drawing::Size(178, 22);
			this->InputChercheNomVilleClient->TabIndex = 31;
			// 
			// InputChercheNomRueClient
			// 
			this->InputChercheNomRueClient->Location = System::Drawing::Point(50, 153);
			this->InputChercheNomRueClient->Name = L"InputChercheNomRueClient";
			this->InputChercheNomRueClient->Size = System::Drawing::Size(178, 22);
			this->InputChercheNomRueClient->TabIndex = 30;
			// 
			// InputCherchePrenomClient
			// 
			this->InputCherchePrenomClient->Location = System::Drawing::Point(50, 103);
			this->InputCherchePrenomClient->Name = L"InputCherchePrenomClient";
			this->InputCherchePrenomClient->Size = System::Drawing::Size(178, 22);
			this->InputCherchePrenomClient->TabIndex = 29;
			// 
			// InputChercheNomClient
			// 
			this->InputChercheNomClient->Location = System::Drawing::Point(50, 53);
			this->InputChercheNomClient->Name = L"InputChercheNomClient";
			this->InputChercheNomClient->Size = System::Drawing::Size(178, 22);
			this->InputChercheNomClient->TabIndex = 28;
			// 
			// label14
			// 
			this->label14->AutoSize = true;
			this->label14->Location = System::Drawing::Point(50, 133);
			this->label14->Name = L"label14";
			this->label14->Size = System::Drawing::Size(97, 17);
			this->label14->TabIndex = 27;
			this->label14->Text = L"Nom de la rue";
			// 
			// label15
			// 
			this->label15->AutoSize = true;
			this->label15->Location = System::Drawing::Point(50, 183);
			this->label15->Name = L"label15";
			this->label15->Size = System::Drawing::Size(100, 17);
			this->label15->TabIndex = 26;
			this->label15->Text = L"Nom de la ville";
			// 
			// label16
			// 
			this->label16->AutoSize = true;
			this->label16->Location = System::Drawing::Point(50, 83);
			this->label16->Name = L"label16";
			this->label16->Size = System::Drawing::Size(57, 17);
			this->label16->TabIndex = 25;
			this->label16->Text = L"Prenom";
			// 
			// label17
			// 
			this->label17->AutoSize = true;
			this->label17->Location = System::Drawing::Point(50, 33);
			this->label17->Name = L"label17";
			this->label17->Size = System::Drawing::Size(37, 17);
			this->label17->TabIndex = 24;
			this->label17->Text = L"Nom";
			// 
			// ClientSupprimer
			// 
			this->ClientSupprimer->Controls->Add(this->button6);
			this->ClientSupprimer->Controls->Add(this->InputDeleteClient);
			this->ClientSupprimer->Controls->Add(this->label18);
			this->ClientSupprimer->Location = System::Drawing::Point(4, 25);
			this->ClientSupprimer->Name = L"ClientSupprimer";
			this->ClientSupprimer->Padding = System::Windows::Forms::Padding(3);
			this->ClientSupprimer->Size = System::Drawing::Size(1140, 299);
			this->ClientSupprimer->TabIndex = 3;
			this->ClientSupprimer->Text = L"Supprimer";
			this->ClientSupprimer->UseVisualStyleBackColor = true;
			// 
			// button6
			// 
			this->button6->Location = System::Drawing::Point(1039, 253);
			this->button6->Name = L"button6";
			this->button6->Size = System::Drawing::Size(95, 40);
			this->button6->TabIndex = 5;
			this->button6->Text = L"Valider";
			this->button6->UseVisualStyleBackColor = true;
			this->button6->Click += gcnew System::EventHandler(this, &MyForm::button6_Click);
			// 
			// InputDeleteClient
			// 
			this->InputDeleteClient->Location = System::Drawing::Point(453, 109);
			this->InputDeleteClient->Name = L"InputDeleteClient";
			this->InputDeleteClient->Size = System::Drawing::Size(100, 22);
			this->InputDeleteClient->TabIndex = 4;
			// 
			// label18
			// 
			this->label18->AutoSize = true;
			this->label18->Location = System::Drawing::Point(450, 89);
			this->label18->Name = L"label18";
			this->label18->Size = System::Drawing::Size(78, 17);
			this->label18->TabIndex = 3;
			this->label18->Text = L"ID du client";
			// 
			// MainCommande
			// 
			this->MainCommande->Controls->Add(this->GridViewCréerCommande);
			this->MainCommande->Controls->Add(this->TabCommande);
			this->MainCommande->Location = System::Drawing::Point(4, 25);
			this->MainCommande->Name = L"MainCommande";
			this->MainCommande->Padding = System::Windows::Forms::Padding(3);
			this->MainCommande->Size = System::Drawing::Size(1154, 616);
			this->MainCommande->TabIndex = 2;
			this->MainCommande->Text = L"Commande";
			this->MainCommande->UseVisualStyleBackColor = true;
			// 
			// GridViewCréerCommande
			// 
			this->GridViewCréerCommande->ColumnHeadersHeightSizeMode = System::Windows::Forms::DataGridViewColumnHeadersHeightSizeMode::AutoSize;
			this->GridViewCréerCommande->Location = System::Drawing::Point(8, 6);
			this->GridViewCréerCommande->Name = L"GridViewCréerCommande";
			this->GridViewCréerCommande->RowHeadersWidth = 51;
			this->GridViewCréerCommande->RowTemplate->Height = 24;
			this->GridViewCréerCommande->Size = System::Drawing::Size(1139, 273);
			this->GridViewCréerCommande->TabIndex = 1;
			// 
			// TabCommande
			// 
			this->TabCommande->Controls->Add(this->CommandeCréer);
			this->TabCommande->Controls->Add(this->CommandeModifier);
			this->TabCommande->Controls->Add(this->CommandeAfficher);
			this->TabCommande->Controls->Add(this->CommandeSupprimer);
			this->TabCommande->Location = System::Drawing::Point(3, 285);
			this->TabCommande->Name = L"TabCommande";
			this->TabCommande->SelectedIndex = 0;
			this->TabCommande->Size = System::Drawing::Size(1148, 328);
			this->TabCommande->TabIndex = 0;
			// 
			// CommandeCréer
			// 
			this->CommandeCréer->Controls->Add(this->PanierClient);
			this->CommandeCréer->Controls->Add(this->label21);
			this->CommandeCréer->Controls->Add(this->labelosef);
			this->CommandeCréer->Controls->Add(this->QuantiterProduitCommande);
			this->CommandeCréer->Controls->Add(this->button12);
			this->CommandeCréer->Controls->Add(this->button8);
			this->CommandeCréer->Controls->Add(this->InputIDProduitCommande);
			this->CommandeCréer->Controls->Add(this->InputDatePaiementCommande);
			this->CommandeCréer->Controls->Add(this->InputModePaiementCommande);
			this->CommandeCréer->Controls->Add(this->InputDateExpeditionCommande);
			this->CommandeCréer->Controls->Add(this->InputDateLivraisonCommande);
			this->CommandeCréer->Controls->Add(this->InputIDCommande);
			this->CommandeCréer->Controls->Add(this->label19);
			this->CommandeCréer->Controls->Add(this->label20);
			this->CommandeCréer->Controls->Add(this->label22);
			this->CommandeCréer->Controls->Add(this->label23);
			this->CommandeCréer->Controls->Add(this->label24);
			this->CommandeCréer->Controls->Add(this->label25);
			this->CommandeCréer->Controls->Add(this->button7);
			this->CommandeCréer->Location = System::Drawing::Point(4, 25);
			this->CommandeCréer->Name = L"CommandeCréer";
			this->CommandeCréer->Padding = System::Windows::Forms::Padding(3);
			this->CommandeCréer->Size = System::Drawing::Size(1140, 299);
			this->CommandeCréer->TabIndex = 0;
			this->CommandeCréer->Text = L"Créer";
			this->CommandeCréer->UseVisualStyleBackColor = true;
			// 
			// label39
			// 
			this->label39->AutoSize = true;
			this->label39->Location = System::Drawing::Point(8, 292);
			this->label39->Name = L"label39";
			this->label39->Size = System::Drawing::Size(91, 17);
			this->label39->TabIndex = 12;
			this->label39->Text = L"PanierMoyen";
			// 
			// PanierClient
			// 
			this->PanierClient->ColumnHeadersHeightSizeMode = System::Windows::Forms::DataGridViewColumnHeadersHeightSizeMode::AutoSize;
			this->PanierClient->Columns->AddRange(gcnew cli::array< System::Windows::Forms::DataGridViewColumn^  >(3) {
				this->IDProduit,
					this->NomProduit, this->Quantité
			});
			this->PanierClient->Location = System::Drawing::Point(601, 53);
			this->PanierClient->Name = L"PanierClient";
			this->PanierClient->RowHeadersWidth = 51;
			this->PanierClient->RowTemplate->Height = 24;
			this->PanierClient->Size = System::Drawing::Size(518, 194);
			this->PanierClient->TabIndex = 41;
			// 
			// IDProduit
			// 
			this->IDProduit->HeaderText = L"IDProduit";
			this->IDProduit->MinimumWidth = 6;
			this->IDProduit->Name = L"IDProduit";
			this->IDProduit->Width = 70;
			// 
			// NomProduit
			// 
			this->NomProduit->HeaderText = L"NomProduit";
			this->NomProduit->MinimumWidth = 6;
			this->NomProduit->Name = L"NomProduit";
			this->NomProduit->Width = 195;
			// 
			// Quantité
			// 
			this->Quantité->HeaderText = L"Quantité";
			this->Quantité->MinimumWidth = 6;
			this->Quantité->Name = L"Quantité";
			this->Quantité->Width = 70;
			// 
			// label21
			// 
			this->label21->AutoSize = true;
			this->label21->Location = System::Drawing::Point(598, 23);
			this->label21->Name = L"label21";
			this->label21->Size = System::Drawing::Size(49, 17);
			this->label21->TabIndex = 40;
			this->label21->Text = L"Panier";
			// 
			// labelosef
			// 
			this->labelosef->AutoSize = true;
			this->labelosef->Location = System::Drawing::Point(350, 183);
			this->labelosef->Name = L"labelosef";
			this->labelosef->Size = System::Drawing::Size(62, 17);
			this->labelosef->TabIndex = 39;
			this->labelosef->Text = L"Quantité";
			// 
			// QuantiterProduitCommande
			// 
			this->QuantiterProduitCommande->Location = System::Drawing::Point(350, 203);
			this->QuantiterProduitCommande->Name = L"QuantiterProduitCommande";
			this->QuantiterProduitCommande->Size = System::Drawing::Size(178, 22);
			this->QuantiterProduitCommande->TabIndex = 38;
			this->QuantiterProduitCommande->Text = L"1";
			// 
			// button12
			// 
			this->button12->Location = System::Drawing::Point(1052, 6);
			this->button12->Name = L"button12";
			this->button12->Size = System::Drawing::Size(82, 23);
			this->button12->TabIndex = 37;
			this->button12->Text = L"Rafraichir";
			this->button12->UseVisualStyleBackColor = true;
			this->button12->Click += gcnew System::EventHandler(this, &MyForm::button12_Click_1);
			// 
			// button8
			// 
			this->button8->Location = System::Drawing::Point(548, 176);
			this->button8->Name = L"button8";
			this->button8->Size = System::Drawing::Size(30, 30);
			this->button8->TabIndex = 34;
			this->button8->Text = L"+";
			this->button8->UseVisualStyleBackColor = true;
			this->button8->Click += gcnew System::EventHandler(this, &MyForm::button8_Click);
			// 
			// InputIDProduitCommande
			// 
			this->InputIDProduitCommande->Location = System::Drawing::Point(350, 153);
			this->InputIDProduitCommande->Name = L"InputIDProduitCommande";
			this->InputIDProduitCommande->Size = System::Drawing::Size(178, 22);
			this->InputIDProduitCommande->TabIndex = 33;
			// 
			// InputDatePaiementCommande
			// 
			this->InputDatePaiementCommande->Location = System::Drawing::Point(350, 53);
			this->InputDatePaiementCommande->Name = L"InputDatePaiementCommande";
			this->InputDatePaiementCommande->Size = System::Drawing::Size(178, 22);
			this->InputDatePaiementCommande->TabIndex = 31;
			// 
			// InputModePaiementCommande
			// 
			this->InputModePaiementCommande->Location = System::Drawing::Point(50, 203);
			this->InputModePaiementCommande->Name = L"InputModePaiementCommande";
			this->InputModePaiementCommande->Size = System::Drawing::Size(178, 22);
			this->InputModePaiementCommande->TabIndex = 30;
			// 
			// InputDateExpeditionCommande
			// 
			this->InputDateExpeditionCommande->Location = System::Drawing::Point(50, 153);
			this->InputDateExpeditionCommande->Name = L"InputDateExpeditionCommande";
			this->InputDateExpeditionCommande->Size = System::Drawing::Size(178, 22);
			this->InputDateExpeditionCommande->TabIndex = 29;
			// 
			// InputDateLivraisonCommande
			// 
			this->InputDateLivraisonCommande->Location = System::Drawing::Point(50, 103);
			this->InputDateLivraisonCommande->Name = L"InputDateLivraisonCommande";
			this->InputDateLivraisonCommande->Size = System::Drawing::Size(178, 22);
			this->InputDateLivraisonCommande->TabIndex = 28;
			// 
			// InputIDCommande
			// 
			this->InputIDCommande->Location = System::Drawing::Point(50, 53);
			this->InputIDCommande->Name = L"InputIDCommande";
			this->InputIDCommande->Size = System::Drawing::Size(178, 22);
			this->InputIDCommande->TabIndex = 27;
			// 
			// label19
			// 
			this->label19->AutoSize = true;
			this->label19->Location = System::Drawing::Point(350, 133);
			this->label19->Name = L"label19";
			this->label19->Size = System::Drawing::Size(90, 17);
			this->label19->TabIndex = 26;
			this->label19->Text = L"ID du Produit";
			// 
			// label20
			// 
			this->label20->AutoSize = true;
			this->label20->Location = System::Drawing::Point(350, 33);
			this->label20->Name = L"label20";
			this->label20->Size = System::Drawing::Size(120, 17);
			this->label20->TabIndex = 25;
			this->label20->Text = L"Date de paiement";
			// 
			// label22
			// 
			this->label22->AutoSize = true;
			this->label22->Location = System::Drawing::Point(50, 33);
			this->label22->Name = L"label22";
			this->label22->Size = System::Drawing::Size(80, 17);
			this->label22->TabIndex = 23;
			this->label22->Text = L"ID du Client";
			// 
			// label23
			// 
			this->label23->AutoSize = true;
			this->label23->Location = System::Drawing::Point(50, 183);
			this->label23->Name = L"label23";
			this->label23->Size = System::Drawing::Size(125, 17);
			this->label23->TabIndex = 22;
			this->label23->Text = L"Mode de paiement";
			// 
			// label24
			// 
			this->label24->AutoSize = true;
			this->label24->Location = System::Drawing::Point(50, 83);
			this->label24->Name = L"label24";
			this->label24->Size = System::Drawing::Size(114, 17);
			this->label24->TabIndex = 21;
			this->label24->Text = L"Date de livraison";
			// 
			// label25
			// 
			this->label25->AutoSize = true;
			this->label25->Location = System::Drawing::Point(50, 133);
			this->label25->Name = L"label25";
			this->label25->Size = System::Drawing::Size(117, 17);
			this->label25->TabIndex = 20;
			this->label25->Text = L"Date d\'expedition";
			// 
			// button7
			// 
			this->button7->Location = System::Drawing::Point(1039, 253);
			this->button7->Name = L"button7";
			this->button7->Size = System::Drawing::Size(95, 40);
			this->button7->TabIndex = 19;
			this->button7->Text = L"Valider";
			this->button7->UseVisualStyleBackColor = true;
			this->button7->Click += gcnew System::EventHandler(this, &MyForm::button7_Click);
			// 
			// CommandeModifier
			// 
			this->CommandeModifier->Location = System::Drawing::Point(4, 25);
			this->CommandeModifier->Name = L"CommandeModifier";
			this->CommandeModifier->Padding = System::Windows::Forms::Padding(3);
			this->CommandeModifier->Size = System::Drawing::Size(1140, 299);
			this->CommandeModifier->TabIndex = 1;
			this->CommandeModifier->Text = L"Modifier";
			this->CommandeModifier->UseVisualStyleBackColor = true;
			// 
			// CommandeAfficher
			// 
			this->CommandeAfficher->Controls->Add(this->button13);
			this->CommandeAfficher->Controls->Add(this->InputCommandeAff);
			this->CommandeAfficher->Controls->Add(this->label28);
			this->CommandeAfficher->Location = System::Drawing::Point(4, 25);
			this->CommandeAfficher->Name = L"CommandeAfficher";
			this->CommandeAfficher->Padding = System::Windows::Forms::Padding(3);
			this->CommandeAfficher->Size = System::Drawing::Size(1140, 299);
			this->CommandeAfficher->TabIndex = 2;
			this->CommandeAfficher->Text = L"Afficher";
			this->CommandeAfficher->UseVisualStyleBackColor = true;
			// 
			// button13
			// 
			this->button13->Location = System::Drawing::Point(323, 46);
			this->button13->Name = L"button13";
			this->button13->Size = System::Drawing::Size(95, 40);
			this->button13->TabIndex = 41;
			this->button13->Text = L"Chercher";
			this->button13->UseVisualStyleBackColor = true;
			this->button13->Click += gcnew System::EventHandler(this, &MyForm::button13_Click);
			// 
			// InputCommandeAff
			// 
			this->InputCommandeAff->Location = System::Drawing::Point(50, 53);
			this->InputCommandeAff->Name = L"InputCommandeAff";
			this->InputCommandeAff->Size = System::Drawing::Size(178, 22);
			this->InputCommandeAff->TabIndex = 37;
			// 
			// label28
			// 
			this->label28->AutoSize = true;
			this->label28->Location = System::Drawing::Point(50, 33);
			this->label28->Name = L"label28";
			this->label28->Size = System::Drawing::Size(56, 17);
			this->label28->TabIndex = 33;
			this->label28->Text = L"IDClient";
			// 
			// CommandeSupprimer
			// 
			this->CommandeSupprimer->Controls->Add(this->ButtonDelCommande);
			this->CommandeSupprimer->Controls->Add(this->TextDelCommande);
			this->CommandeSupprimer->Controls->Add(this->label36);
			this->CommandeSupprimer->Location = System::Drawing::Point(4, 25);
			this->CommandeSupprimer->Name = L"CommandeSupprimer";
			this->CommandeSupprimer->Padding = System::Windows::Forms::Padding(3);
			this->CommandeSupprimer->Size = System::Drawing::Size(1140, 299);
			this->CommandeSupprimer->TabIndex = 3;
			this->CommandeSupprimer->Text = L"Supprimer";
			this->CommandeSupprimer->UseVisualStyleBackColor = true;
			// 
			// ButtonDelCommande
			// 
			this->ButtonDelCommande->Location = System::Drawing::Point(1039, 253);
			this->ButtonDelCommande->Name = L"ButtonDelCommande";
			this->ButtonDelCommande->Size = System::Drawing::Size(95, 40);
			this->ButtonDelCommande->TabIndex = 44;
			this->ButtonDelCommande->Text = L"Valider";
			this->ButtonDelCommande->UseVisualStyleBackColor = true;
			this->ButtonDelCommande->Click += gcnew System::EventHandler(this, &MyForm::ButtonDelCommande_Click);
			// 
			// TextDelCommande
			// 
			this->TextDelCommande->Location = System::Drawing::Point(453, 109);
			this->TextDelCommande->Name = L"TextDelCommande";
			this->TextDelCommande->Size = System::Drawing::Size(100, 22);
			this->TextDelCommande->TabIndex = 43;
			// 
			// label36
			// 
			this->label36->AutoSize = true;
			this->label36->Location = System::Drawing::Point(450, 89);
			this->label36->Name = L"label36";
			this->label36->Size = System::Drawing::Size(129, 17);
			this->label36->TabIndex = 42;
			this->label36->Text = L"ID de la commande";
			// 
			// MainArticle
			// 
			this->MainArticle->Controls->Add(this->tabControl1);
			this->MainArticle->Controls->Add(this->GridViewCréerArticle);
			this->MainArticle->Location = System::Drawing::Point(4, 25);
			this->MainArticle->Name = L"MainArticle";
			this->MainArticle->Padding = System::Windows::Forms::Padding(3);
			this->MainArticle->Size = System::Drawing::Size(1154, 616);
			this->MainArticle->TabIndex = 3;
			this->MainArticle->Text = L"Article";
			this->MainArticle->UseVisualStyleBackColor = true;
			// 
			// tabControl1
			// 
			this->tabControl1->Controls->Add(this->tabPage1);
			this->tabControl1->Controls->Add(this->tabPage2);
			this->tabControl1->Controls->Add(this->tabPage3);
			this->tabControl1->Controls->Add(this->tabPage4);
			this->tabControl1->Location = System::Drawing::Point(3, 285);
			this->tabControl1->Name = L"tabControl1";
			this->tabControl1->SelectedIndex = 0;
			this->tabControl1->Size = System::Drawing::Size(1148, 328);
			this->tabControl1->TabIndex = 3;
			// 
			// tabPage1
			// 
			this->tabPage1->Controls->Add(this->label34);
			this->tabPage1->Controls->Add(this->InputPrixAchatproduit);
			this->tabPage1->Controls->Add(this->InputTaxeproduit);
			this->tabPage1->Controls->Add(this->InputStockproduit);
			this->tabPage1->Controls->Add(this->InputPrixproduit);
			this->tabPage1->Controls->Add(this->InputNomproduit);
			this->tabPage1->Controls->Add(this->label30);
			this->tabPage1->Controls->Add(this->label31);
			this->tabPage1->Controls->Add(this->label32);
			this->tabPage1->Controls->Add(this->label33);
			this->tabPage1->Controls->Add(this->button15);
			this->tabPage1->Controls->Add(this->button14);
			this->tabPage1->Location = System::Drawing::Point(4, 25);
			this->tabPage1->Name = L"tabPage1";
			this->tabPage1->Padding = System::Windows::Forms::Padding(3);
			this->tabPage1->Size = System::Drawing::Size(1140, 299);
			this->tabPage1->TabIndex = 0;
			this->tabPage1->Text = L"Créer";
			this->tabPage1->UseVisualStyleBackColor = true;
			// 
			// label34
			// 
			this->label34->AutoSize = true;
			this->label34->Location = System::Drawing::Point(347, 33);
			this->label34->Name = L"label34";
			this->label34->Size = System::Drawing::Size(81, 17);
			this->label34->TabIndex = 51;
			this->label34->Text = L"Prix d\'achat";
			// 
			// InputPrixAchatproduit
			// 
			this->InputPrixAchatproduit->Location = System::Drawing::Point(350, 53);
			this->InputPrixAchatproduit->Name = L"InputPrixAchatproduit";
			this->InputPrixAchatproduit->Size = System::Drawing::Size(178, 22);
			this->InputPrixAchatproduit->TabIndex = 50;
			// 
			// InputTaxeproduit
			// 
			this->InputTaxeproduit->Location = System::Drawing::Point(50, 203);
			this->InputTaxeproduit->Name = L"InputTaxeproduit";
			this->InputTaxeproduit->Size = System::Drawing::Size(178, 22);
			this->InputTaxeproduit->TabIndex = 49;
			// 
			// InputStockproduit
			// 
			this->InputStockproduit->Location = System::Drawing::Point(50, 153);
			this->InputStockproduit->Name = L"InputStockproduit";
			this->InputStockproduit->Size = System::Drawing::Size(178, 22);
			this->InputStockproduit->TabIndex = 48;
			// 
			// InputPrixproduit
			// 
			this->InputPrixproduit->Location = System::Drawing::Point(50, 103);
			this->InputPrixproduit->Name = L"InputPrixproduit";
			this->InputPrixproduit->Size = System::Drawing::Size(178, 22);
			this->InputPrixproduit->TabIndex = 47;
			// 
			// InputNomproduit
			// 
			this->InputNomproduit->Location = System::Drawing::Point(50, 53);
			this->InputNomproduit->Name = L"InputNomproduit";
			this->InputNomproduit->Size = System::Drawing::Size(178, 22);
			this->InputNomproduit->TabIndex = 46;
			// 
			// label30
			// 
			this->label30->AutoSize = true;
			this->label30->Location = System::Drawing::Point(50, 133);
			this->label30->Name = L"label30";
			this->label30->Size = System::Drawing::Size(43, 17);
			this->label30->TabIndex = 42;
			this->label30->Text = L"Stock";
			// 
			// label31
			// 
			this->label31->AutoSize = true;
			this->label31->Location = System::Drawing::Point(50, 183);
			this->label31->Name = L"label31";
			this->label31->Size = System::Drawing::Size(39, 17);
			this->label31->TabIndex = 41;
			this->label31->Text = L"Taxe";
			// 
			// label32
			// 
			this->label32->AutoSize = true;
			this->label32->Location = System::Drawing::Point(50, 83);
			this->label32->Name = L"label32";
			this->label32->Size = System::Drawing::Size(31, 17);
			this->label32->TabIndex = 40;
			this->label32->Text = L"Prix";
			// 
			// label33
			// 
			this->label33->AutoSize = true;
			this->label33->Location = System::Drawing::Point(50, 33);
			this->label33->Name = L"label33";
			this->label33->Size = System::Drawing::Size(37, 17);
			this->label33->TabIndex = 39;
			this->label33->Text = L"Nom";
			// 
			// button15
			// 
			this->button15->Location = System::Drawing::Point(1039, 253);
			this->button15->Name = L"button15";
			this->button15->Size = System::Drawing::Size(95, 40);
			this->button15->TabIndex = 38;
			this->button15->Text = L"Valider";
			this->button15->UseVisualStyleBackColor = true;
			this->button15->Click += gcnew System::EventHandler(this, &MyForm::button15_Click);
			// 
			// button14
			// 
			this->button14->Location = System::Drawing::Point(1052, 6);
			this->button14->Name = L"button14";
			this->button14->Size = System::Drawing::Size(82, 23);
			this->button14->TabIndex = 37;
			this->button14->Text = L"Rafraichir";
			this->button14->UseVisualStyleBackColor = true;
			this->button14->Click += gcnew System::EventHandler(this, &MyForm::button14_Click);
			// 
			// tabPage2
			// 
			this->tabPage2->Controls->Add(this->button19);
			this->tabPage2->Controls->Add(this->button18);
			this->tabPage2->Controls->Add(this->ModifIDProduit);
			this->tabPage2->Controls->Add(this->label35);
			this->tabPage2->Controls->Add(this->ModifPrixAchatProduit);
			this->tabPage2->Controls->Add(this->ModifStockProduit);
			this->tabPage2->Controls->Add(this->ModifPrixProduit);
			this->tabPage2->Controls->Add(this->ModifNomProduit);
			this->tabPage2->Controls->Add(this->NomPrixAchatproduit);
			this->tabPage2->Controls->Add(this->NomStockproduit);
			this->tabPage2->Controls->Add(this->NomPrixproduit);
			this->tabPage2->Controls->Add(this->NomAffproduit);
			this->tabPage2->Location = System::Drawing::Point(4, 25);
			this->tabPage2->Name = L"tabPage2";
			this->tabPage2->Padding = System::Windows::Forms::Padding(3);
			this->tabPage2->Size = System::Drawing::Size(1140, 299);
			this->tabPage2->TabIndex = 1;
			this->tabPage2->Text = L"Modifier";
			this->tabPage2->UseVisualStyleBackColor = true;
			// 
			// button19
			// 
			this->button19->Location = System::Drawing::Point(1039, 253);
			this->button19->Name = L"button19";
			this->button19->Size = System::Drawing::Size(95, 40);
			this->button19->TabIndex = 54;
			this->button19->Text = L"Valider";
			this->button19->UseVisualStyleBackColor = true;
			this->button19->Click += gcnew System::EventHandler(this, &MyForm::button19_Click);
			// 
			// button18
			// 
			this->button18->Location = System::Drawing::Point(50, 83);
			this->button18->Name = L"button18";
			this->button18->Size = System::Drawing::Size(89, 42);
			this->button18->TabIndex = 53;
			this->button18->Text = L"Chercher";
			this->button18->UseVisualStyleBackColor = true;
			this->button18->Click += gcnew System::EventHandler(this, &MyForm::button18_Click);
			// 
			// ModifIDProduit
			// 
			this->ModifIDProduit->Location = System::Drawing::Point(50, 53);
			this->ModifIDProduit->Name = L"ModifIDProduit";
			this->ModifIDProduit->Size = System::Drawing::Size(178, 22);
			this->ModifIDProduit->TabIndex = 52;
			// 
			// label35
			// 
			this->label35->AutoSize = true;
			this->label35->Location = System::Drawing::Point(50, 33);
			this->label35->Name = L"label35";
			this->label35->Size = System::Drawing::Size(70, 17);
			this->label35->TabIndex = 51;
			this->label35->Text = L"ID Produit";
			// 
			// ModifPrixAchatProduit
			// 
			this->ModifPrixAchatProduit->Location = System::Drawing::Point(350, 203);
			this->ModifPrixAchatProduit->Name = L"ModifPrixAchatProduit";
			this->ModifPrixAchatProduit->Size = System::Drawing::Size(178, 22);
			this->ModifPrixAchatProduit->TabIndex = 48;
			this->ModifPrixAchatProduit->Visible = false;
			// 
			// ModifStockProduit
			// 
			this->ModifStockProduit->Location = System::Drawing::Point(350, 153);
			this->ModifStockProduit->Name = L"ModifStockProduit";
			this->ModifStockProduit->Size = System::Drawing::Size(178, 22);
			this->ModifStockProduit->TabIndex = 46;
			this->ModifStockProduit->Visible = false;
			// 
			// ModifPrixProduit
			// 
			this->ModifPrixProduit->Location = System::Drawing::Point(350, 103);
			this->ModifPrixProduit->Name = L"ModifPrixProduit";
			this->ModifPrixProduit->Size = System::Drawing::Size(178, 22);
			this->ModifPrixProduit->TabIndex = 45;
			this->ModifPrixProduit->Visible = false;
			// 
			// ModifNomProduit
			// 
			this->ModifNomProduit->Location = System::Drawing::Point(350, 53);
			this->ModifNomProduit->Name = L"ModifNomProduit";
			this->ModifNomProduit->Size = System::Drawing::Size(178, 22);
			this->ModifNomProduit->TabIndex = 44;
			this->ModifNomProduit->Visible = false;
			// 
			// NomPrixAchatproduit
			// 
			this->NomPrixAchatproduit->AutoSize = true;
			this->NomPrixAchatproduit->Location = System::Drawing::Point(350, 183);
			this->NomPrixAchatproduit->Name = L"NomPrixAchatproduit";
			this->NomPrixAchatproduit->Size = System::Drawing::Size(81, 17);
			this->NomPrixAchatproduit->TabIndex = 42;
			this->NomPrixAchatproduit->Text = L"Prix d\'achat";
			this->NomPrixAchatproduit->Visible = false;
			// 
			// NomStockproduit
			// 
			this->NomStockproduit->AutoSize = true;
			this->NomStockproduit->Location = System::Drawing::Point(350, 133);
			this->NomStockproduit->Name = L"NomStockproduit";
			this->NomStockproduit->Size = System::Drawing::Size(43, 17);
			this->NomStockproduit->TabIndex = 40;
			this->NomStockproduit->Text = L"Stock";
			this->NomStockproduit->Visible = false;
			// 
			// NomPrixproduit
			// 
			this->NomPrixproduit->AutoSize = true;
			this->NomPrixproduit->Location = System::Drawing::Point(350, 83);
			this->NomPrixproduit->Name = L"NomPrixproduit";
			this->NomPrixproduit->Size = System::Drawing::Size(31, 17);
			this->NomPrixproduit->TabIndex = 38;
			this->NomPrixproduit->Text = L"Prix";
			this->NomPrixproduit->Visible = false;
			// 
			// NomAffproduit
			// 
			this->NomAffproduit->AutoSize = true;
			this->NomAffproduit->Location = System::Drawing::Point(350, 33);
			this->NomAffproduit->Name = L"NomAffproduit";
			this->NomAffproduit->Size = System::Drawing::Size(37, 17);
			this->NomAffproduit->TabIndex = 37;
			this->NomAffproduit->Text = L"Nom";
			this->NomAffproduit->Visible = false;
			// 
			// tabPage3
			// 
			this->tabPage3->Controls->Add(this->button17);
			this->tabPage3->Controls->Add(this->InputChercheStockProduit);
			this->tabPage3->Controls->Add(this->InputCherchePrixProduit);
			this->tabPage3->Controls->Add(this->InputChercheNomProduit);
			this->tabPage3->Controls->Add(this->label38);
			this->tabPage3->Controls->Add(this->label27);
			this->tabPage3->Controls->Add(this->label29);
			this->tabPage3->Location = System::Drawing::Point(4, 25);
			this->tabPage3->Name = L"tabPage3";
			this->tabPage3->Padding = System::Windows::Forms::Padding(3);
			this->tabPage3->Size = System::Drawing::Size(1140, 299);
			this->tabPage3->TabIndex = 2;
			this->tabPage3->Text = L"Afficher";
			this->tabPage3->UseVisualStyleBackColor = true;
			// 
			// button17
			// 
			this->button17->Location = System::Drawing::Point(323, 121);
			this->button17->Name = L"button17";
			this->button17->Size = System::Drawing::Size(95, 40);
			this->button17->TabIndex = 63;
			this->button17->Text = L"Chercher";
			this->button17->UseVisualStyleBackColor = true;
			this->button17->Click += gcnew System::EventHandler(this, &MyForm::button17_Click);
			// 
			// InputChercheStockProduit
			// 
			this->InputChercheStockProduit->Location = System::Drawing::Point(50, 153);
			this->InputChercheStockProduit->Name = L"InputChercheStockProduit";
			this->InputChercheStockProduit->Size = System::Drawing::Size(178, 22);
			this->InputChercheStockProduit->TabIndex = 61;
			// 
			// InputCherchePrixProduit
			// 
			this->InputCherchePrixProduit->Location = System::Drawing::Point(50, 103);
			this->InputCherchePrixProduit->Name = L"InputCherchePrixProduit";
			this->InputCherchePrixProduit->Size = System::Drawing::Size(178, 22);
			this->InputCherchePrixProduit->TabIndex = 60;
			// 
			// InputChercheNomProduit
			// 
			this->InputChercheNomProduit->Location = System::Drawing::Point(50, 53);
			this->InputChercheNomProduit->Name = L"InputChercheNomProduit";
			this->InputChercheNomProduit->Size = System::Drawing::Size(178, 22);
			this->InputChercheNomProduit->TabIndex = 59;
			// 
			// label38
			// 
			this->label38->AutoSize = true;
			this->label38->Location = System::Drawing::Point(50, 33);
			this->label38->Name = L"label38";
			this->label38->Size = System::Drawing::Size(37, 17);
			this->label38->TabIndex = 55;
			this->label38->Text = L"Nom";
			// 
			// label27
			// 
			this->label27->AutoSize = true;
			this->label27->Location = System::Drawing::Point(50, 133);
			this->label27->Name = L"label27";
			this->label27->Size = System::Drawing::Size(43, 17);
			this->label27->TabIndex = 51;
			this->label27->Text = L"Stock";
			// 
			// label29
			// 
			this->label29->AutoSize = true;
			this->label29->Location = System::Drawing::Point(50, 83);
			this->label29->Name = L"label29";
			this->label29->Size = System::Drawing::Size(31, 17);
			this->label29->TabIndex = 50;
			this->label29->Text = L"Prix";
			// 
			// tabPage4
			// 
			this->tabPage4->Controls->Add(this->button16);
			this->tabPage4->Controls->Add(this->InputDeleteProduit);
			this->tabPage4->Controls->Add(this->label26);
			this->tabPage4->Location = System::Drawing::Point(4, 25);
			this->tabPage4->Name = L"tabPage4";
			this->tabPage4->Padding = System::Windows::Forms::Padding(3);
			this->tabPage4->Size = System::Drawing::Size(1140, 299);
			this->tabPage4->TabIndex = 3;
			this->tabPage4->Text = L"Supprimer";
			this->tabPage4->UseVisualStyleBackColor = true;
			// 
			// button16
			// 
			this->button16->Location = System::Drawing::Point(1039, 253);
			this->button16->Name = L"button16";
			this->button16->Size = System::Drawing::Size(95, 40);
			this->button16->TabIndex = 5;
			this->button16->Text = L"Valider";
			this->button16->UseVisualStyleBackColor = true;
			this->button16->Click += gcnew System::EventHandler(this, &MyForm::button16_Click);
			// 
			// InputDeleteProduit
			// 
			this->InputDeleteProduit->Location = System::Drawing::Point(453, 109);
			this->InputDeleteProduit->Name = L"InputDeleteProduit";
			this->InputDeleteProduit->Size = System::Drawing::Size(100, 22);
			this->InputDeleteProduit->TabIndex = 4;
			// 
			// label26
			// 
			this->label26->AutoSize = true;
			this->label26->Location = System::Drawing::Point(450, 89);
			this->label26->Name = L"label26";
			this->label26->Size = System::Drawing::Size(89, 17);
			this->label26->TabIndex = 3;
			this->label26->Text = L"ID du produit";
			// 
			// GridViewCréerArticle
			// 
			this->GridViewCréerArticle->ColumnHeadersHeightSizeMode = System::Windows::Forms::DataGridViewColumnHeadersHeightSizeMode::AutoSize;
			this->GridViewCréerArticle->Location = System::Drawing::Point(9, 6);
			this->GridViewCréerArticle->Name = L"GridViewCréerArticle";
			this->GridViewCréerArticle->RowHeadersWidth = 51;
			this->GridViewCréerArticle->RowTemplate->Height = 24;
			this->GridViewCréerArticle->Size = System::Drawing::Size(1139, 273);
			this->GridViewCréerArticle->TabIndex = 2;
			// 
			// tabPage5
			// 
			this->tabPage5->Controls->Add(this->label58);
			this->tabPage5->Controls->Add(this->StatsSeuilReap);
			this->tabPage5->Controls->Add(this->label54);
			this->tabPage5->Controls->Add(this->StatsDemarqueInco);
			this->tabPage5->Controls->Add(this->label55);
			this->tabPage5->Controls->Add(this->StatsRemiseCom);
			this->tabPage5->Controls->Add(this->label56);
			this->tabPage5->Controls->Add(this->StatsMargeCom);
			this->tabPage5->Controls->Add(this->label57);
			this->tabPage5->Controls->Add(this->StatsImport);
			this->tabPage5->Controls->Add(this->label53);
			this->tabPage5->Controls->Add(this->StatsTVAp);
			this->tabPage5->Controls->Add(this->label52);
			this->tabPage5->Controls->Add(this->StatsTVAr);
			this->tabPage5->Controls->Add(this->label51);
			this->tabPage5->Controls->Add(this->StatsTVAi);
			this->tabPage5->Controls->Add(this->label50);
			this->tabPage5->Controls->Add(this->StatsTVAn);
			this->tabPage5->Controls->Add(this->label49);
			this->tabPage5->Controls->Add(this->StatsIDClient);
			this->tabPage5->Controls->Add(this->label48);
			this->tabPage5->Controls->Add(this->StatsDateEntree);
			this->tabPage5->Controls->Add(this->label47);
			this->tabPage5->Controls->Add(this->label46);
			this->tabPage5->Controls->Add(this->label45);
			this->tabPage5->Controls->Add(this->label44);
			this->tabPage5->Controls->Add(this->label43);
			this->tabPage5->Controls->Add(this->label42);
			this->tabPage5->Controls->Add(this->label41);
			this->tabPage5->Controls->Add(this->label40);
			this->tabPage5->Controls->Add(this->label39);
			this->tabPage5->Controls->Add(this->button27);
			this->tabPage5->Controls->Add(this->button26);
			this->tabPage5->Controls->Add(this->button25);
			this->tabPage5->Controls->Add(this->button24);
			this->tabPage5->Controls->Add(this->button23);
			this->tabPage5->Controls->Add(this->button22);
			this->tabPage5->Controls->Add(this->button21);
			this->tabPage5->Controls->Add(this->button20);
			this->tabPage5->Controls->Add(this->button9);
			this->tabPage5->Controls->Add(this->DataGridStats);
			this->tabPage5->Location = System::Drawing::Point(4, 25);
			this->tabPage5->Name = L"tabPage5";
			this->tabPage5->Padding = System::Windows::Forms::Padding(3);
			this->tabPage5->Size = System::Drawing::Size(1154, 616);
			this->tabPage5->TabIndex = 4;
			this->tabPage5->Text = L"Stats";
			this->tabPage5->UseVisualStyleBackColor = true;
			// 
			// label58
			// 
			this->label58->AutoSize = true;
			this->label58->Location = System::Drawing::Point(269, 359);
			this->label58->Name = L"label58";
			this->label58->Size = System::Drawing::Size(105, 17);
			this->label58->TabIndex = 42;
			this->label58->Text = L"StatsSeuilReap";
			// 
			// StatsSeuilReap
			// 
			this->StatsSeuilReap->Location = System::Drawing::Point(272, 379);
			this->StatsSeuilReap->Name = L"StatsSeuilReap";
			this->StatsSeuilReap->Size = System::Drawing::Size(104, 22);
			this->StatsSeuilReap->TabIndex = 41;
			this->StatsSeuilReap->Text = L"3";
			// 
			// label54
			// 
			this->label54->AutoSize = true;
			this->label54->Location = System::Drawing::Point(1052, 552);
			this->label54->Name = L"label54";
			this->label54->Size = System::Drawing::Size(100, 17);
			this->label54->TabIndex = 40;
			this->label54->Text = L"DemarqueInco";
			// 
			// StatsDemarqueInco
			// 
			this->StatsDemarqueInco->Location = System::Drawing::Point(1053, 572);
			this->StatsDemarqueInco->Name = L"StatsDemarqueInco";
			this->StatsDemarqueInco->Size = System::Drawing::Size(72, 22);
			this->StatsDemarqueInco->TabIndex = 39;
			this->StatsDemarqueInco->Text = L"0.0";
			// 
			// label55
			// 
			this->label55->AutoSize = true;
			this->label55->Location = System::Drawing::Point(1052, 507);
			this->label55->Name = L"label55";
			this->label55->Size = System::Drawing::Size(83, 17);
			this->label55->TabIndex = 38;
			this->label55->Text = L"RemiseCom";
			// 
			// StatsRemiseCom
			// 
			this->StatsRemiseCom->Location = System::Drawing::Point(1053, 527);
			this->StatsRemiseCom->Name = L"StatsRemiseCom";
			this->StatsRemiseCom->Size = System::Drawing::Size(72, 22);
			this->StatsRemiseCom->TabIndex = 37;
			this->StatsRemiseCom->Text = L"0.0";
			// 
			// label56
			// 
			this->label56->AutoSize = true;
			this->label56->Location = System::Drawing::Point(1052, 462);
			this->label56->Name = L"label56";
			this->label56->Size = System::Drawing::Size(76, 17);
			this->label56->TabIndex = 36;
			this->label56->Text = L"MargeCom";
			// 
			// StatsMargeCom
			// 
			this->StatsMargeCom->Location = System::Drawing::Point(1053, 482);
			this->StatsMargeCom->Name = L"StatsMargeCom";
			this->StatsMargeCom->Size = System::Drawing::Size(72, 22);
			this->StatsMargeCom->TabIndex = 35;
			this->StatsMargeCom->Text = L"0.0";
			// 
			// label57
			// 
			this->label57->AutoSize = true;
			this->label57->Location = System::Drawing::Point(1052, 417);
			this->label57->Name = L"label57";
			this->label57->Size = System::Drawing::Size(47, 17);
			this->label57->TabIndex = 34;
			this->label57->Text = L"Import";
			// 
			// StatsImport
			// 
			this->StatsImport->Location = System::Drawing::Point(1053, 437);
			this->StatsImport->Name = L"StatsImport";
			this->StatsImport->Size = System::Drawing::Size(72, 22);
			this->StatsImport->TabIndex = 33;
			this->StatsImport->Text = L"0.2";
			// 
			// label53
			// 
			this->label53->AutoSize = true;
			this->label53->Location = System::Drawing::Point(974, 552);
			this->label53->Name = L"label53";
			this->label53->Size = System::Drawing::Size(43, 17);
			this->label53->TabIndex = 32;
			this->label53->Text = L"TVAp";
			// 
			// StatsTVAp
			// 
			this->StatsTVAp->Location = System::Drawing::Point(975, 572);
			this->StatsTVAp->Name = L"StatsTVAp";
			this->StatsTVAp->Size = System::Drawing::Size(72, 22);
			this->StatsTVAp->TabIndex = 31;
			this->StatsTVAp->Text = L"0.021";
			// 
			// label52
			// 
			this->label52->AutoSize = true;
			this->label52->Location = System::Drawing::Point(974, 507);
			this->label52->Name = L"label52";
			this->label52->Size = System::Drawing::Size(40, 17);
			this->label52->TabIndex = 30;
			this->label52->Text = L"TVAr";
			// 
			// StatsTVAr
			// 
			this->StatsTVAr->Location = System::Drawing::Point(975, 527);
			this->StatsTVAr->Name = L"StatsTVAr";
			this->StatsTVAr->Size = System::Drawing::Size(72, 22);
			this->StatsTVAr->TabIndex = 29;
			this->StatsTVAr->Text = L"0.055";
			// 
			// label51
			// 
			this->label51->AutoSize = true;
			this->label51->Location = System::Drawing::Point(974, 462);
			this->label51->Name = L"label51";
			this->label51->Size = System::Drawing::Size(38, 17);
			this->label51->TabIndex = 28;
			this->label51->Text = L"TVAi";
			// 
			// StatsTVAi
			// 
			this->StatsTVAi->Location = System::Drawing::Point(975, 482);
			this->StatsTVAi->Name = L"StatsTVAi";
			this->StatsTVAi->Size = System::Drawing::Size(72, 22);
			this->StatsTVAi->TabIndex = 27;
			this->StatsTVAi->Text = L"0.1";
			// 
			// label50
			// 
			this->label50->AutoSize = true;
			this->label50->Location = System::Drawing::Point(974, 417);
			this->label50->Name = L"label50";
			this->label50->Size = System::Drawing::Size(43, 17);
			this->label50->TabIndex = 26;
			this->label50->Text = L"TVAn";
			// 
			// StatsTVAn
			// 
			this->StatsTVAn->Location = System::Drawing::Point(975, 437);
			this->StatsTVAn->Name = L"StatsTVAn";
			this->StatsTVAn->Size = System::Drawing::Size(72, 22);
			this->StatsTVAn->TabIndex = 25;
			this->StatsTVAn->Text = L"0.2";
			// 
			// label49
			// 
			this->label49->AutoSize = true;
			this->label49->Location = System::Drawing::Point(401, 359);
			this->label49->Name = L"label49";
			this->label49->Size = System::Drawing::Size(88, 17);
			this->label49->TabIndex = 24;
			this->label49->Text = L"StatsIDClient";
			// 
			// StatsIDClient
			// 
			this->StatsIDClient->Location = System::Drawing::Point(404, 379);
			this->StatsIDClient->Name = L"StatsIDClient";
			this->StatsIDClient->Size = System::Drawing::Size(104, 22);
			this->StatsIDClient->TabIndex = 23;
			this->StatsIDClient->Text = L"3";
			// 
			// label48
			// 
			this->label48->AutoSize = true;
			this->label48->Location = System::Drawing::Point(140, 359);
			this->label48->Name = L"label48";
			this->label48->Size = System::Drawing::Size(112, 17);
			this->label48->TabIndex = 22;
			this->label48->Text = L"StatsDateEntree";
			// 
			// StatsDateEntree
			// 
			this->StatsDateEntree->Location = System::Drawing::Point(143, 379);
			this->StatsDateEntree->Name = L"StatsDateEntree";
			this->StatsDateEntree->Size = System::Drawing::Size(109, 22);
			this->StatsDateEntree->TabIndex = 21;
			this->StatsDateEntree->Text = L"MM-JJ-AAAA";
			// 
			// label47
			// 
			this->label47->AutoSize = true;
			this->label47->Location = System::Drawing::Point(1061, 292);
			this->label47->Name = L"label47";
			this->label47->Size = System::Drawing::Size(64, 17);
			this->label47->TabIndex = 20;
			this->label47->Text = L"SimulVar";
			// 
			// label46
			// 
			this->label46->AutoSize = true;
			this->label46->Location = System::Drawing::Point(929, 292);
			this->label46->Name = L"label46";
			this->label46->Size = System::Drawing::Size(99, 17);
			this->label46->TabIndex = 19;
			this->label46->Text = L"ValAchatStock";
			// 
			// label45
			// 
			this->label45->AutoSize = true;
			this->label45->Location = System::Drawing::Point(797, 292);
			this->label45->Name = L"label45";
			this->label45->Size = System::Drawing::Size(91, 17);
			this->label45->TabIndex = 18;
			this->label45->Text = L"ValComStock";
			// 
			// label44
			// 
			this->label44->AutoSize = true;
			this->label44->Location = System::Drawing::Point(665, 292);
			this->label44->Name = L"label44";
			this->label44->Size = System::Drawing::Size(77, 17);
			this->label44->TabIndex = 17;
			this->label44->Text = L"10-Vendus";
			// 
			// label43
			// 
			this->label43->AutoSize = true;
			this->label43->Location = System::Drawing::Point(533, 292);
			this->label43->Name = L"label43";
			this->label43->Size = System::Drawing::Size(80, 17);
			this->label43->TabIndex = 16;
			this->label43->Text = L"10+Vendus";
			// 
			// label42
			// 
			this->label42->AutoSize = true;
			this->label42->Location = System::Drawing::Point(401, 292);
			this->label42->Name = L"label42";
			this->label42->Size = System::Drawing::Size(126, 17);
			this->label42->TabIndex = 15;
			this->label42->Text = L"MontantTotalClient";
			// 
			// label41
			// 
			this->label41->AutoSize = true;
			this->label41->Location = System::Drawing::Point(269, 292);
			this->label41->Name = L"label41";
			this->label41->Size = System::Drawing::Size(77, 17);
			this->label41->TabIndex = 14;
			this->label41->Text = L"Seuil Reap";
			// 
			// label40
			// 
			this->label40->AutoSize = true;
			this->label40->Location = System::Drawing::Point(137, 292);
			this->label40->Name = L"label40";
			this->label40->Size = System::Drawing::Size(103, 17);
			this->label40->TabIndex = 13;
			this->label40->Text = L"CA sur un Mois";
			// 
			// button27
			// 
			this->button27->Location = System::Drawing::Point(1064, 312);
			this->button27->Name = L"button27";
			this->button27->Size = System::Drawing::Size(82, 32);
			this->button27->TabIndex = 11;
			this->button27->Text = L"PRESS";
			this->button27->UseVisualStyleBackColor = true;
			this->button27->Click += gcnew System::EventHandler(this, &MyForm::button27_Click);
			// 
			// button26
			// 
			this->button26->Location = System::Drawing::Point(932, 312);
			this->button26->Name = L"button26";
			this->button26->Size = System::Drawing::Size(82, 32);
			this->button26->TabIndex = 10;
			this->button26->Text = L"PRESS";
			this->button26->UseVisualStyleBackColor = true;
			this->button26->Click += gcnew System::EventHandler(this, &MyForm::button26_Click);
			// 
			// button25
			// 
			this->button25->Location = System::Drawing::Point(800, 312);
			this->button25->Name = L"button25";
			this->button25->Size = System::Drawing::Size(82, 32);
			this->button25->TabIndex = 9;
			this->button25->Text = L"PRESS";
			this->button25->UseVisualStyleBackColor = true;
			this->button25->Click += gcnew System::EventHandler(this, &MyForm::button25_Click);
			// 
			// button24
			// 
			this->button24->Location = System::Drawing::Point(668, 312);
			this->button24->Name = L"button24";
			this->button24->Size = System::Drawing::Size(82, 32);
			this->button24->TabIndex = 8;
			this->button24->Text = L"PRESS";
			this->button24->UseVisualStyleBackColor = true;
			this->button24->Click += gcnew System::EventHandler(this, &MyForm::button24_Click);
			// 
			// button23
			// 
			this->button23->Location = System::Drawing::Point(536, 312);
			this->button23->Name = L"button23";
			this->button23->Size = System::Drawing::Size(82, 32);
			this->button23->TabIndex = 7;
			this->button23->Text = L"PRESS";
			this->button23->UseVisualStyleBackColor = true;
			this->button23->Click += gcnew System::EventHandler(this, &MyForm::button23_Click);
			// 
			// button22
			// 
			this->button22->Location = System::Drawing::Point(404, 312);
			this->button22->Name = L"button22";
			this->button22->Size = System::Drawing::Size(82, 32);
			this->button22->TabIndex = 6;
			this->button22->Text = L"PRESS";
			this->button22->UseVisualStyleBackColor = true;
			this->button22->Click += gcnew System::EventHandler(this, &MyForm::button22_Click);
			// 
			// button21
			// 
			this->button21->Location = System::Drawing::Point(272, 312);
			this->button21->Name = L"button21";
			this->button21->Size = System::Drawing::Size(82, 32);
			this->button21->TabIndex = 5;
			this->button21->Text = L"PRESS";
			this->button21->UseVisualStyleBackColor = true;
			this->button21->Click += gcnew System::EventHandler(this, &MyForm::button21_Click);
			// 
			// button20
			// 
			this->button20->Location = System::Drawing::Point(140, 312);
			this->button20->Name = L"button20";
			this->button20->Size = System::Drawing::Size(82, 32);
			this->button20->TabIndex = 4;
			this->button20->Text = L"PRESS";
			this->button20->UseVisualStyleBackColor = true;
			this->button20->Click += gcnew System::EventHandler(this, &MyForm::button20_Click);
			// 
			// button9
			// 
			this->button9->Location = System::Drawing::Point(8, 312);
			this->button9->Name = L"button9";
			this->button9->Size = System::Drawing::Size(82, 32);
			this->button9->TabIndex = 3;
			this->button9->Text = L"PRESS";
			this->button9->UseVisualStyleBackColor = true;
			this->button9->Click += gcnew System::EventHandler(this, &MyForm::button9_Click_1);
			// 
			// DataGridStats
			// 
			this->DataGridStats->ColumnHeadersHeightSizeMode = System::Windows::Forms::DataGridViewColumnHeadersHeightSizeMode::AutoSize;
			this->DataGridStats->Location = System::Drawing::Point(8, 6);
			this->DataGridStats->Name = L"DataGridStats";
			this->DataGridStats->RowHeadersWidth = 51;
			this->DataGridStats->RowTemplate->Height = 24;
			this->DataGridStats->Size = System::Drawing::Size(1139, 273);
			this->DataGridStats->TabIndex = 2;
			// 
			// label58
			// 
			this->label58->AutoSize = true;
			this->label58->Location = System::Drawing::Point(598, 31);
			this->label58->Name = L"label58";
			this->label58->Size = System::Drawing::Size(34, 17);
			this->label58->TabIndex = 40;
			this->label58->Text = L"Ville";
			// 
			// listBox2
			// 
			this->listBox2->FormattingEnabled = true;
			this->listBox2->ItemHeight = 16;
			this->listBox2->Items->AddRange(gcnew cli::array< System::Object^  >(14) {
				L"1 Saint-Nazaire", L"2 Nantes", L"3 Paris", L"4 Guerande",
					L"5 Lyon", L"6 Marseille\t", L"7 Lille", L"8 Bordeaux\t", L"9 Toulouse\t", L"10 Nice", L"11 Madrid", L"12 Berlin", L"13 Londres",
					L"14 Bruxelles"
			});
			this->listBox2->Location = System::Drawing::Point(601, 51);
			this->listBox2->Name = L"listBox2";
			this->listBox2->Size = System::Drawing::Size(533, 196);
			this->listBox2->TabIndex = 39;
			// 
			// MyForm
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(8, 16);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->ClientSize = System::Drawing::Size(1162, 645);
			this->Controls->Add(this->MainTab);
			this->Name = L"MyForm";
			this->Text = L"MyForm";
			this->Load += gcnew System::EventHandler(this, &MyForm::MyForm_Load);
			this->MainTab->ResumeLayout(false);
			this->MainPersonnel->ResumeLayout(false);
			this->TabPersonnel->ResumeLayout(false);
			this->PersonnelCréer->ResumeLayout(false);
			this->PersonnelCréer->PerformLayout();
			this->PersonnelModifier->ResumeLayout(false);
			this->PersonnelModifier->PerformLayout();
			this->PersonnelAfficher->ResumeLayout(false);
			this->PersonnelAfficher->PerformLayout();
			this->PersonnelSupprimer->ResumeLayout(false);
			this->PersonnelSupprimer->PerformLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->GridViewCréerPersonnel))->EndInit();
			this->MainClient->ResumeLayout(false);
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->GridViewCréerClient))->EndInit();
			this->TabClient->ResumeLayout(false);
			this->ClientCréer->ResumeLayout(false);
			this->ClientCréer->PerformLayout();
			this->ClientModifier->ResumeLayout(false);
			this->ClientModifier->PerformLayout();
			this->ClientAfficher->ResumeLayout(false);
			this->ClientAfficher->PerformLayout();
			this->ClientSupprimer->ResumeLayout(false);
			this->ClientSupprimer->PerformLayout();
			this->MainCommande->ResumeLayout(false);
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->GridViewCréerCommande))->EndInit();
			this->TabCommande->ResumeLayout(false);
			this->CommandeCréer->ResumeLayout(false);
			this->CommandeCréer->PerformLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->PanierClient))->EndInit();
			this->CommandeAfficher->ResumeLayout(false);
			this->CommandeAfficher->PerformLayout();
			this->CommandeSupprimer->ResumeLayout(false);
			this->CommandeSupprimer->PerformLayout();
			this->MainArticle->ResumeLayout(false);
			this->tabControl1->ResumeLayout(false);
			this->tabPage1->ResumeLayout(false);
			this->tabPage1->PerformLayout();
			this->tabPage2->ResumeLayout(false);
			this->tabPage2->PerformLayout();
			this->tabPage3->ResumeLayout(false);
			this->tabPage3->PerformLayout();
			this->tabPage4->ResumeLayout(false);
			this->tabPage4->PerformLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->GridViewCréerArticle))->EndInit();
			this->tabPage5->ResumeLayout(false);
			this->tabPage5->PerformLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->DataGridStats))->EndInit();
			this->ResumeLayout(false);

		}
#pragma endregion

private: System::Void MyForm_Load(System::Object^ sender, System::EventArgs^ e)
{
	this->oSvc = gcnew NS_Comp_Svc::Service();
	RafraichirPersonnel(sender, e);
}
private: System::Void RafraichirPersonnel(System::Object^ sender, System::EventArgs^ e) {

	this->GridViewCréerPersonnel->Refresh();
	this->oDs = this->oSvc->selectionnerToutLePersonnel("A");
	this->GridViewCréerPersonnel->DataSource = this->oDs;
	this->GridViewCréerPersonnel->DataMember = "A";
}
private: System::Void RafraichirClient(System::Object^ sender, System::EventArgs^ e) {

	this->GridViewCréerClient->Refresh();
	this->oDs = this->oSvc->selectionnerToutLesClients("B");
	this->GridViewCréerClient->DataSource = this->oDs;
	this->GridViewCréerClient->DataMember = "B";
}
private: System::Void button1_Click(System::Object^ sender, System::EventArgs^ e) {
	
	this->oSvc->ajouterUneAdresse(this->InputNomRuePersonnel->Text, this->InputNumeroRuePersonnel->Text, this->InputIDVillePersonnel->Text);
	this->oSvc->ajouterUnPersonnel(this->InputNomPersonnel->Text, this->InputPreomPersonnel->Text, this->InputDateDeNaissancePersonnel->Text, this->InputDateEmbauchePersonnel->Text);


	RafraichirPersonnel(sender, e);
}
private: System::Void textBox1_TextChanged(System::Object^ sender, System::EventArgs^ e) {
}
private: System::Void label1_Click(System::Object^ sender, System::EventArgs^ e) {
}
private: System::Void ValiderDeletePersonnel_Click(System::Object^ sender, System::EventArgs^ e) {
	this->oSvc->supprimerUnPersonnel(this->InputDeletePersonnel->Text);

	RafraichirPersonnel(sender, e);
}
private: System::Void button1_Click_1(System::Object^ sender, System::EventArgs^ e) {
	this->oSvc->updateUnPersonnel(this->ModifIDPersonnel->Text, this->ModifNomPersonnel->Text, this->ModifPrenomPersonnel->Text, this->ModifDateNaissancePersonnel->Text, this->ModifDateEmbauchePersonnel->Text);
	this->oSvc->updateUneAdressePersonnel(this->ModifIDPersonnel->Text, this->ModifNomRuePersonnel->Text, this->ModifNumeroRuePersonnel->Text, this->ModifIDVillePersonnel->Text);

	RafraichirUnPersonnel(sender, e);
}
private: System::Void button2_Click(System::Object^ sender, System::EventArgs^ e) {
	
	RafraichirUnPersonnel(sender, e);
	this->ModifNomPersonnel->Text = this->GridViewCréerPersonnel->Rows[0]->Cells["NomPersonnel"]->Value->ToString();
	this->ModifNomPersonnel->Visible = true;
	this->NomAff->Visible = true;
	this->ModifPrenomPersonnel->Text = this->GridViewCréerPersonnel->Rows[0]->Cells["PrenomPersonnel"]->Value->ToString();
	this->ModifPrenomPersonnel->Visible = true;
	this->PrenomAff->Visible = true;
	this->ModifNomRuePersonnel->Text = this->GridViewCréerPersonnel->Rows[0]->Cells["NomRue"]->Value->ToString();
	this->ModifNomRuePersonnel->Visible = true;
	this->NomRueAff->Visible = true;
	this->ModifNumeroRuePersonnel->Text = this->GridViewCréerPersonnel->Rows[0]->Cells["NumeroRue"]->Value->ToString();
	this->ModifNumeroRuePersonnel->Visible = true;
	this->NumeroRueAff->Visible = true;
	this->ModifDateNaissancePersonnel->Text = this->GridViewCréerPersonnel->Rows[0]->Cells["DateDeNaissancePersonnel"]->Value->ToString();
	this->ModifDateNaissancePersonnel->Visible = true;
	this->NaissanceAff->Visible = true;
	this->ModifDateEmbauchePersonnel->Text = this->GridViewCréerPersonnel->Rows[0]->Cells["DateEmbauchePersonnel"]->Value->ToString();
	this->ModifDateEmbauchePersonnel->Visible = true;
	this->EmbaucheAff->Visible = true;
	this->ModifIDVillePersonnel->Text = this->GridViewCréerPersonnel->Rows[0]->Cells["IDVille"]->Value->ToString();
	this->ModifIDVillePersonnel->Visible = true;
	this->IDVilleAff->Visible = true;
}
private: System::Void RafraichirUnPersonnel(System::Object^ sender, System::EventArgs^ e) {

	this->GridViewCréerPersonnel->Refresh();
	this->oDs = this->oSvc->selectionnerUnPersonnel(this->ModifIDPersonnel->Text, "Rsl");
	this->GridViewCréerPersonnel->DataSource = this->oDs;
	this->GridViewCréerPersonnel->DataMember = "Rsl";
}
private: System::Void RafraichirUnClient(System::Object^ sender, System::EventArgs^ e) {

	this->GridViewCréerClient->Refresh();
	this->oDs = this->oSvc->selectionnerUnClient(this->InputModifIDClient->Text, "Rsl");
	this->GridViewCréerClient->DataSource = this->oDs;
	this->GridViewCréerClient->DataMember = "Rsl";
}
private: System::Void label3_Click(System::Object^ sender, System::EventArgs^ e) {
}
private: System::Void ChercherNom_Click(System::Object^ sender, System::EventArgs^ e) {
	this->GridViewCréerPersonnel->Refresh();
	this->oDs = this->oSvc->selectionnerConditionPersonnel(this->InputChercheNom->Text,this->InputCherchePrenom->Text,this->InputChercheNomRue->Text,this->InputChercheNomVille->Text, "Rsl");
	this->GridViewCréerPersonnel->DataSource = this->oDs;
	this->GridViewCréerPersonnel->DataMember = "Rsl";
}
private: System::Void button2_Click_1(System::Object^ sender, System::EventArgs^ e) {
	this->oSvc->ajouterUnClient(this->InputNomClient->Text, this->InputPrenomClient->Text, this->InputNaissanceClient->Text);
	this->oSvc->ajouterUneAdresse(this->InputNomRueClient->Text, this->InputNumeroRueClient->Text, this->IDVilleClient->Text);
	this->oSvc->ajouterHabiter(this->ChoixTypeClient->Text);
	RafraichirClient(sender, e);
}
private: System::Void button3_Click(System::Object^ sender, System::EventArgs^ e) {
	RafraichirUnClient(sender , e);
	this->NomModifClient->Visible = true;
	this->ModifNomClient->Visible = true;
	this->ModifNomClient->Text = this->GridViewCréerClient->Rows[0]->Cells["NomClient"]->Value->ToString();
	this->PrenomModifClient->Visible = true;
	this->ModifPrenomClient->Visible = true;
	this->ModifPrenomClient->Text = this->GridViewCréerClient->Rows[0]->Cells["PrenomClient"]->Value->ToString();
	this->NaissanceModifClient->Visible = true;
	this->ModifNaissanceClient->Visible = true;
	this->ModifNaissanceClient->Text = this->GridViewCréerClient->Rows[0]->Cells["DateDeNaissanceClient"]->Value->ToString();
	this->NomRueModifClient->Visible = true;
	this->ModifNomRueClient->Visible = true;
	this->ModifNomRueClient->Text = this->GridViewCréerClient->Rows[0]->Cells["NomRue"]->Value->ToString();
	this->NumeroRueModifClient->Visible = true;
	this->ModifNumeroRueClient->Visible = true;
	this->ModifNumeroRueClient->Text = this->GridViewCréerClient->Rows[0]->Cells["NumeroRue"]->Value->ToString();
	this->IDVilleModifClient->Visible = true;
	this->ModifIDVilleClient->Visible = true;
	this->ModifIDVilleClient->Text = this->GridViewCréerClient->Rows[0]->Cells["IDVIlle"]->Value->ToString();
	this->TypeAdresseModifClient->Visible = true;
	this->ModifTypeAdresseClient->Visible = true;
	this->ModifTypeAdresseClient->Text = this->GridViewCréerClient->Rows[0]->Cells["TypeAdresse"]->Value->ToString();

	
}
private: System::Void button4_Click(System::Object^ sender, System::EventArgs^ e) {
	this->oSvc->updateUnClient(this->InputModifIDClient->Text,this->ModifNomClient->Text, this->ModifPrenomClient->Text, this->ModifNaissanceClient->Text);
	this->oSvc->updateUneAdresseClient(this->InputModifIDClient->Text, this->ModifNomRueClient->Text, this->ModifNumeroRueClient->Text, this->ModifIDVilleClient->Text);
	this->oSvc->updateHabiter(this->InputModifIDClient->Text, this->ModifTypeAdresseClient->Text);

	RafraichirUnClient(sender, e);
}
private: System::Void ModifNomClient_TextChanged(System::Object^ sender, System::EventArgs^ e) {
}
private: System::Void button5_Click(System::Object^ sender, System::EventArgs^ e) {
	this->GridViewCréerClient->Refresh();
	this->oDs = this->oSvc->selectionnerConditionClient(this->InputChercheNomClient->Text, this->InputCherchePrenomClient->Text, this->InputChercheNomRueClient->Text, this->InputChercheNomVilleClient->Text, "NN");
	this->GridViewCréerClient->DataSource = this->oDs;
	this->GridViewCréerClient->DataMember = "NN";
}
private: System::Void button6_Click(System::Object^ sender, System::EventArgs^ e) {

	this->oSvc->supprimerUnClient(this->InputDeleteClient->Text);
	

	RafraichirClient(sender, e);
}
private: System::Void button8_Click(System::Object^ sender, System::EventArgs^ e) {
	RafraichirUnArticle(sender, e);
	this->PanierClient->Rows->Add(this->GridViewCréerCommande->Rows[0]->Cells["IDProduit"]->Value->ToString(), this->GridViewCréerCommande->Rows[0]->Cells["NomProduit"]->Value->ToString(), this->QuantiterProduitCommande->Text);
	this->GridViewCréerCommande->Refresh();
	this->oDs = this->oSvc->selectionnerArticle("NN");
	this->GridViewCréerCommande->DataSource = this->oDs;
	this->GridViewCréerCommande->DataMember = "NN";
}

private: System::Void button10_Click(System::Object^ sender, System::EventArgs^ e) {
	RafraichirPersonnel(sender, e);
}
private: System::Void button11_Click(System::Object^ sender, System::EventArgs^ e) {
	RafraichirClient(sender, e);
}
private: System::Void button12_Click(System::Object^ sender, System::EventArgs^ e) {
}
private: System::Void button12_Click_1(System::Object^ sender, System::EventArgs^ e) {
	this->GridViewCréerCommande->DataSource;
	this->GridViewCréerCommande->Refresh();
	this->oDs = this->oSvc->selectionnerArticle("ZZ");
	this->GridViewCréerCommande->DataSource = this->oDs;
	this->GridViewCréerCommande->DataMember = "ZZ";
	this->PanierClient->Rows->Clear();
}
private: System::Void PanierClient_SelectedIndexChanged(System::Object^ sender, System::EventArgs^ e) {
}
private: System::Void button9_Click(System::Object^ sender, System::EventArgs^ e) {
	RafraichirUnArticle(sender, e);
	this->GridViewCréerCommande->Refresh();
	this->oDs = this->oSvc->selectionnerArticle("VV");
	this->GridViewCréerCommande->DataSource = this->oDs;
	this->GridViewCréerCommande->DataMember = "VV";
}
private: System::Void RafraichirUnArticle(System::Object^ sender, System::EventArgs^ e) {

	this->GridViewCréerCommande->Refresh();
	this->oDs = this->oSvc->selectionnerUnArticle(this->InputIDProduitCommande->Text, "Rsl");
	this->GridViewCréerCommande->DataSource = this->oDs;
	this->GridViewCréerCommande->DataMember = "Rsl";
}

private: System::Void button13_Click(System::Object^ sender, System::EventArgs^ e) {
	RafraichirUneCommande(sender, e);
}

private: System::Void RafraichirUneCommande(System::Object^ sender, System::EventArgs^ e) {

	this->GridViewCréerCommande->Refresh();
	this->oDs = this->oSvc->selectionnerUneCommande(this->InputCommandeAff->Text, "CZ");
	this->GridViewCréerCommande->DataSource = this->oDs;
	this->GridViewCréerCommande->DataMember = "CZ";
}
private: System::Void button7_Click(System::Object^ sender, System::EventArgs^ e) {
	this->oSvc->ajouterUneCommande(this->InputDateExpeditionCommande->Text, this->InputDateLivraisonCommande->Text, this->InputIDCommande->Text);

	int count = int::Parse(this->PanierClient->Rows->Count.ToString());
	for (int i = 0; i < count-1; i++) {
		this->oSvc->ajouterComposer(this->PanierClient->Rows[i]->Cells["IDProduit"]->Value->ToString(), this->PanierClient->Rows[i]->Cells["Quantité"]->Value->ToString());
	}
	this->PanierClient->Rows->Clear();

	this->GridViewCréerCommande->Refresh();
	this->oDs = this->oSvc->selectionnerUneCommande(this->InputIDCommande->Text, "CZ");
	this->GridViewCréerCommande->DataSource = this->oDs;
	this->GridViewCréerCommande->DataMember = "CZ";


}
private: System::Void button14_Click(System::Object^ sender, System::EventArgs^ e) {
	this->GridViewCréerArticle->Refresh();
	this->oDs = this->oSvc->selectionnerArticle("SS");
	this->GridViewCréerArticle->DataSource = this->oDs;
	this->GridViewCréerArticle->DataMember = "SS";
}
private: System::Void button15_Click(System::Object^ sender, System::EventArgs^ e) {
	this->oSvc->ajouterUnArticle(this->InputNomproduit->Text, this->InputPrixproduit->Text, this->InputStockproduit->Text, this->InputTaxeproduit->Text, this->InputPrixAchatproduit->Text);
	button14_Click(sender, e);

}
private: System::Void button16_Click(System::Object^ sender, System::EventArgs^ e) {
	this->oSvc->supprimerUnProduit(this->InputDeleteProduit->Text);
	button14_Click(sender, e);
}
private: System::Void button17_Click(System::Object^ sender, System::EventArgs^ e) {
	this->GridViewCréerArticle->Refresh();
	this->oDs = this->oSvc->selectionnerUnProduit(this->InputChercheNomProduit->Text, this->InputCherchePrixProduit->Text, this->InputChercheStockProduit->Text, "Rsl");
	this->GridViewCréerArticle->DataSource = this->oDs;
	this->GridViewCréerArticle->DataMember = "Rsl";
}
private: System::Void button18_Click(System::Object^ sender, System::EventArgs^ e) {
	this->GridViewCréerArticle->Refresh();
	this->oDs = this->oSvc->selectionnerUnSeulProduit(this->ModifIDProduit->Text,"Rsl");
	this->GridViewCréerArticle->DataSource = this->oDs;
	this->GridViewCréerArticle->DataMember = "Rsl";

	this->NomAffproduit->Visible = true;
	this->ModifNomProduit->Visible = true;
	this->ModifNomProduit->Text = this->GridViewCréerArticle->Rows[0]->Cells["NomProduit"]->Value->ToString();
	this->NomPrixproduit->Visible = true;
	this->ModifPrixProduit->Visible = true;
	this->ModifPrixProduit->Text = this->GridViewCréerArticle->Rows[0]->Cells["PrixProduit"]->Value->ToString();
	this->NomStockproduit->Visible = true;
	this->ModifStockProduit->Visible = true;
	this->ModifStockProduit->Text = this->GridViewCréerArticle->Rows[0]->Cells["StockProduit"]->Value->ToString();
	this->NomPrixAchatproduit->Visible = true;
	this->ModifPrixAchatProduit->Visible = true;
	this->ModifPrixAchatProduit->Text = this->GridViewCréerArticle->Rows[0]->Cells["PrixAchatProduit"]->Value->ToString();
}
private: System::Void button19_Click(System::Object^ sender, System::EventArgs^ e) {
	this->oSvc->updateUnproduit(this->ModifIDProduit->Text, this->ModifNomProduit->Text, this->ModifPrixProduit->Text, this->ModifStockProduit->Text, this->ModifPrixAchatProduit->Text);
	button18_Click(sender, e);
}
private: System::Void ButtonDelCommande_Click(System::Object^ sender, System::EventArgs^ e) {
	this->oSvc->supprimerUneCommande(this->TextDelCommande->Text);
}
private: System::Void button9_Click_1(System::Object^ sender, System::EventArgs^ e) {
	this->DataGridStats->Refresh();
	this->oDs = this->oSvc->PanierMoyen("Pain");
	this->DataGridStats->DataSource = this->oDs;
	this->DataGridStats->DataMember = "Pain";
}
private: System::Void button20_Click(System::Object^ sender, System::EventArgs^ e) {
	this->DataGridStats->Refresh();
	this->oDs = this->oSvc->ChiffreAffaire(this->StatsDateEntree->Text,"Tomate");
	this->DataGridStats->DataSource = this->oDs;
	this->DataGridStats->DataMember = "Tomate";
}
private: System::Void button21_Click(System::Object^ sender, System::EventArgs^ e) {
	this->DataGridStats->Refresh();
	this->oDs = this->oSvc->SeuilReap(this->StatsSeuilReap->Text,"Jambon");
	this->DataGridStats->DataSource = this->oDs;
	this->DataGridStats->DataMember = "Jambon";
}
private: System::Void button22_Click(System::Object^ sender, System::EventArgs^ e) {
	this->DataGridStats->Refresh();
	this->oDs = this->oSvc->MontantAchat1Client(this->StatsIDClient->Text, "Fromage");
	this->DataGridStats->DataSource = this->oDs;
	this->DataGridStats->DataMember = "Fromage";
}
private: System::Void button23_Click(System::Object^ sender, System::EventArgs^ e) {
	this->DataGridStats->Refresh();
	this->oDs = this->oSvc->PlusVendus("Salade");
	this->DataGridStats->DataSource = this->oDs;
	this->DataGridStats->DataMember = "Salade";
}
private: System::Void button24_Click(System::Object^ sender, System::EventArgs^ e) {
	this->DataGridStats->Refresh();
	this->oDs = this->oSvc->MoinsVendus("Beurre");
	this->DataGridStats->DataSource = this->oDs;
	this->DataGridStats->DataMember = "Beurre";
}
private: System::Void button25_Click(System::Object^ sender, System::EventArgs^ e) {
	this->DataGridStats->Refresh();
	this->oDs = this->oSvc->ValCom("Champignon");
	this->DataGridStats->DataSource = this->oDs;
	this->DataGridStats->DataMember = "Champignon";
}
private: System::Void button26_Click(System::Object^ sender, System::EventArgs^ e) {
	this->DataGridStats->Refresh();
	this->oDs = this->oSvc->ValAchat("Poivron");
	this->DataGridStats->DataSource = this->oDs;
	this->DataGridStats->DataMember = "Poivron";
}
private: System::Void button27_Click(System::Object^ sender, System::EventArgs^ e) {
	this->DataGridStats->Refresh();
	this->oDs = this->oSvc->SimulVar(this->StatsTVAn->Text,this->StatsTVAi->Text,this->StatsTVAr->Text,this->StatsTVAp->Text,this->StatsImport->Text,this->StatsMargeCom->Text,this->StatsRemiseCom->Text,this->StatsDemarqueInco->Text,"Poulet");
	this->DataGridStats->DataSource = this->oDs;
	this->DataGridStats->DataMember = "Poulet";
}
};
}
