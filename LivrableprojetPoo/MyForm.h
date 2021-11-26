#pragma once
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


	private: System::Windows::Forms::Label^ label1;
	private: System::Windows::Forms::Label^ label2;
	private: System::Windows::Forms::Label^ label3;
	private: System::Windows::Forms::Label^ label4;
	private: System::Windows::Forms::Label^ label5;
	private: System::Windows::Forms::Label^ label6;
	private: System::Windows::Forms::Label^ label7;
private: System::Windows::Forms::TextBox^ ModifIDPersonnel;


private: System::Windows::Forms::Label^ label8;
private: System::Windows::Forms::DataGridView^ dataGridView1;
private: System::Windows::Forms::DataGridView^ dataGridView2;
private: System::Windows::Forms::Button^ button1;



























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
			this->label1 = (gcnew System::Windows::Forms::Label());
			this->label2 = (gcnew System::Windows::Forms::Label());
			this->label3 = (gcnew System::Windows::Forms::Label());
			this->label4 = (gcnew System::Windows::Forms::Label());
			this->label5 = (gcnew System::Windows::Forms::Label());
			this->label6 = (gcnew System::Windows::Forms::Label());
			this->label7 = (gcnew System::Windows::Forms::Label());
			this->PersonnelAfficher = (gcnew System::Windows::Forms::TabPage());
			this->PersonnelSupprimer = (gcnew System::Windows::Forms::TabPage());
			this->ValiderDeletePersonnel = (gcnew System::Windows::Forms::Button());
			this->InputDeletePersonnel = (gcnew System::Windows::Forms::TextBox());
			this->IDDeletePersonnel = (gcnew System::Windows::Forms::Label());
			this->GridViewCréerPersonnel = (gcnew System::Windows::Forms::DataGridView());
			this->MainClient = (gcnew System::Windows::Forms::TabPage());
			this->dataGridView1 = (gcnew System::Windows::Forms::DataGridView());
			this->TabClient = (gcnew System::Windows::Forms::TabControl());
			this->ClientCréer = (gcnew System::Windows::Forms::TabPage());
			this->ClientModifier = (gcnew System::Windows::Forms::TabPage());
			this->ClientAfficher = (gcnew System::Windows::Forms::TabPage());
			this->ClientSupprimer = (gcnew System::Windows::Forms::TabPage());
			this->MainCommande = (gcnew System::Windows::Forms::TabPage());
			this->dataGridView2 = (gcnew System::Windows::Forms::DataGridView());
			this->TabCommande = (gcnew System::Windows::Forms::TabControl());
			this->CommandeCréer = (gcnew System::Windows::Forms::TabPage());
			this->CommandeModifier = (gcnew System::Windows::Forms::TabPage());
			this->CommandeAfficher = (gcnew System::Windows::Forms::TabPage());
			this->CommandeSupprimer = (gcnew System::Windows::Forms::TabPage());
			this->MainTab->SuspendLayout();
			this->MainPersonnel->SuspendLayout();
			this->TabPersonnel->SuspendLayout();
			this->PersonnelCréer->SuspendLayout();
			this->PersonnelModifier->SuspendLayout();
			this->PersonnelSupprimer->SuspendLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->GridViewCréerPersonnel))->BeginInit();
			this->MainClient->SuspendLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->dataGridView1))->BeginInit();
			this->TabClient->SuspendLayout();
			this->MainCommande->SuspendLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->dataGridView2))->BeginInit();
			this->TabCommande->SuspendLayout();
			this->SuspendLayout();
			// 
			// MainTab
			// 
			this->MainTab->Controls->Add(this->MainPersonnel);
			this->MainTab->Controls->Add(this->MainClient);
			this->MainTab->Controls->Add(this->MainCommande);
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
			this->PersonnelModifier->Controls->Add(this->label1);
			this->PersonnelModifier->Controls->Add(this->label2);
			this->PersonnelModifier->Controls->Add(this->label3);
			this->PersonnelModifier->Controls->Add(this->label4);
			this->PersonnelModifier->Controls->Add(this->label5);
			this->PersonnelModifier->Controls->Add(this->label6);
			this->PersonnelModifier->Controls->Add(this->label7);
			this->PersonnelModifier->Location = System::Drawing::Point(4, 25);
			this->PersonnelModifier->Name = L"PersonnelModifier";
			this->PersonnelModifier->Padding = System::Windows::Forms::Padding(3);
			this->PersonnelModifier->Size = System::Drawing::Size(1140, 299);
			this->PersonnelModifier->TabIndex = 1;
			this->PersonnelModifier->Text = L"Modifier";
			this->PersonnelModifier->UseVisualStyleBackColor = true;
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
			this->ModifIDPersonnel->TextChanged += gcnew System::EventHandler(this, &MyForm::ModifIDPersonnel_TextChanged);
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
			this->ModifIDVillePersonnel->Location = System::Drawing::Point(350, 203);
			this->ModifIDVillePersonnel->Name = L"ModifIDVillePersonnel";
			this->ModifIDVillePersonnel->Size = System::Drawing::Size(178, 22);
			this->ModifIDVillePersonnel->TabIndex = 32;
			// 
			// ModifNumeroRuePersonnel
			// 
			this->ModifNumeroRuePersonnel->Location = System::Drawing::Point(350, 153);
			this->ModifNumeroRuePersonnel->Name = L"ModifNumeroRuePersonnel";
			this->ModifNumeroRuePersonnel->Size = System::Drawing::Size(178, 22);
			this->ModifNumeroRuePersonnel->TabIndex = 31;
			// 
			// ModifNomRuePersonnel
			// 
			this->ModifNomRuePersonnel->Location = System::Drawing::Point(350, 103);
			this->ModifNomRuePersonnel->Name = L"ModifNomRuePersonnel";
			this->ModifNomRuePersonnel->Size = System::Drawing::Size(178, 22);
			this->ModifNomRuePersonnel->TabIndex = 30;
			// 
			// ModifDateEmbauchePersonnel
			// 
			this->ModifDateEmbauchePersonnel->Location = System::Drawing::Point(350, 53);
			this->ModifDateEmbauchePersonnel->Name = L"ModifDateEmbauchePersonnel";
			this->ModifDateEmbauchePersonnel->Size = System::Drawing::Size(178, 22);
			this->ModifDateEmbauchePersonnel->TabIndex = 29;
			// 
			// ModifDateNaissancePersonnel
			// 
			this->ModifDateNaissancePersonnel->Location = System::Drawing::Point(50, 203);
			this->ModifDateNaissancePersonnel->Name = L"ModifDateNaissancePersonnel";
			this->ModifDateNaissancePersonnel->Size = System::Drawing::Size(178, 22);
			this->ModifDateNaissancePersonnel->TabIndex = 28;
			// 
			// ModifPrenomPersonnel
			// 
			this->ModifPrenomPersonnel->Location = System::Drawing::Point(50, 153);
			this->ModifPrenomPersonnel->Name = L"ModifPrenomPersonnel";
			this->ModifPrenomPersonnel->Size = System::Drawing::Size(178, 22);
			this->ModifPrenomPersonnel->TabIndex = 27;
			// 
			// ModifNomPersonnel
			// 
			this->ModifNomPersonnel->Location = System::Drawing::Point(50, 103);
			this->ModifNomPersonnel->Name = L"ModifNomPersonnel";
			this->ModifNomPersonnel->Size = System::Drawing::Size(178, 22);
			this->ModifNomPersonnel->TabIndex = 26;
			// 
			// label1
			// 
			this->label1->AutoSize = true;
			this->label1->Location = System::Drawing::Point(350, 183);
			this->label1->Name = L"label1";
			this->label1->Size = System::Drawing::Size(84, 17);
			this->label1->TabIndex = 25;
			this->label1->Text = L"ID de la ville";
			// 
			// label2
			// 
			this->label2->AutoSize = true;
			this->label2->Location = System::Drawing::Point(350, 83);
			this->label2->Name = L"label2";
			this->label2->Size = System::Drawing::Size(97, 17);
			this->label2->TabIndex = 24;
			this->label2->Text = L"Nom de la rue";
			// 
			// label3
			// 
			this->label3->AutoSize = true;
			this->label3->Location = System::Drawing::Point(350, 133);
			this->label3->Name = L"label3";
			this->label3->Size = System::Drawing::Size(118, 17);
			this->label3->TabIndex = 23;
			this->label3->Text = L"Numero de la rue";
			// 
			// label4
			// 
			this->label4->AutoSize = true;
			this->label4->Location = System::Drawing::Point(50, 183);
			this->label4->Name = L"label4";
			this->label4->Size = System::Drawing::Size(126, 17);
			this->label4->TabIndex = 22;
			this->label4->Text = L"Date de naissance";
			// 
			// label5
			// 
			this->label5->AutoSize = true;
			this->label5->Location = System::Drawing::Point(350, 33);
			this->label5->Name = L"label5";
			this->label5->Size = System::Drawing::Size(119, 17);
			this->label5->TabIndex = 21;
			this->label5->Text = L"Date d\'embauche";
			// 
			// label6
			// 
			this->label6->AutoSize = true;
			this->label6->Location = System::Drawing::Point(50, 133);
			this->label6->Name = L"label6";
			this->label6->Size = System::Drawing::Size(57, 17);
			this->label6->TabIndex = 20;
			this->label6->Text = L"Prenom";
			// 
			// label7
			// 
			this->label7->AutoSize = true;
			this->label7->Location = System::Drawing::Point(50, 83);
			this->label7->Name = L"label7";
			this->label7->Size = System::Drawing::Size(37, 17);
			this->label7->TabIndex = 19;
			this->label7->Text = L"Nom";
			// 
			// PersonnelAfficher
			// 
			this->PersonnelAfficher->Location = System::Drawing::Point(4, 25);
			this->PersonnelAfficher->Name = L"PersonnelAfficher";
			this->PersonnelAfficher->Padding = System::Windows::Forms::Padding(3);
			this->PersonnelAfficher->Size = System::Drawing::Size(1140, 299);
			this->PersonnelAfficher->TabIndex = 2;
			this->PersonnelAfficher->Text = L"Afficher";
			this->PersonnelAfficher->UseVisualStyleBackColor = true;
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
			this->GridViewCréerPersonnel->Size = System::Drawing::Size(1138, 273);
			this->GridViewCréerPersonnel->TabIndex = 0;
			// 
			// MainClient
			// 
			this->MainClient->Controls->Add(this->dataGridView1);
			this->MainClient->Controls->Add(this->TabClient);
			this->MainClient->Location = System::Drawing::Point(4, 25);
			this->MainClient->Name = L"MainClient";
			this->MainClient->Padding = System::Windows::Forms::Padding(3);
			this->MainClient->Size = System::Drawing::Size(1154, 616);
			this->MainClient->TabIndex = 1;
			this->MainClient->Text = L"Client";
			this->MainClient->UseVisualStyleBackColor = true;
			// 
			// dataGridView1
			// 
			this->dataGridView1->ColumnHeadersHeightSizeMode = System::Windows::Forms::DataGridViewColumnHeadersHeightSizeMode::AutoSize;
			this->dataGridView1->Location = System::Drawing::Point(8, 6);
			this->dataGridView1->Name = L"dataGridView1";
			this->dataGridView1->RowHeadersWidth = 51;
			this->dataGridView1->RowTemplate->Height = 24;
			this->dataGridView1->Size = System::Drawing::Size(1138, 273);
			this->dataGridView1->TabIndex = 1;
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
			this->ClientCréer->Location = System::Drawing::Point(4, 25);
			this->ClientCréer->Name = L"ClientCréer";
			this->ClientCréer->Padding = System::Windows::Forms::Padding(3);
			this->ClientCréer->Size = System::Drawing::Size(1140, 299);
			this->ClientCréer->TabIndex = 0;
			this->ClientCréer->Text = L"Créer";
			this->ClientCréer->UseVisualStyleBackColor = true;
			// 
			// ClientModifier
			// 
			this->ClientModifier->Location = System::Drawing::Point(4, 25);
			this->ClientModifier->Name = L"ClientModifier";
			this->ClientModifier->Padding = System::Windows::Forms::Padding(3);
			this->ClientModifier->Size = System::Drawing::Size(1140, 299);
			this->ClientModifier->TabIndex = 1;
			this->ClientModifier->Text = L"Modifier";
			this->ClientModifier->UseVisualStyleBackColor = true;
			// 
			// ClientAfficher
			// 
			this->ClientAfficher->Location = System::Drawing::Point(4, 25);
			this->ClientAfficher->Name = L"ClientAfficher";
			this->ClientAfficher->Padding = System::Windows::Forms::Padding(3);
			this->ClientAfficher->Size = System::Drawing::Size(1140, 299);
			this->ClientAfficher->TabIndex = 2;
			this->ClientAfficher->Text = L"Afficher";
			this->ClientAfficher->UseVisualStyleBackColor = true;
			// 
			// ClientSupprimer
			// 
			this->ClientSupprimer->Location = System::Drawing::Point(4, 25);
			this->ClientSupprimer->Name = L"ClientSupprimer";
			this->ClientSupprimer->Padding = System::Windows::Forms::Padding(3);
			this->ClientSupprimer->Size = System::Drawing::Size(1140, 299);
			this->ClientSupprimer->TabIndex = 3;
			this->ClientSupprimer->Text = L"Supprimer";
			this->ClientSupprimer->UseVisualStyleBackColor = true;
			// 
			// MainCommande
			// 
			this->MainCommande->Controls->Add(this->dataGridView2);
			this->MainCommande->Controls->Add(this->TabCommande);
			this->MainCommande->Location = System::Drawing::Point(4, 25);
			this->MainCommande->Name = L"MainCommande";
			this->MainCommande->Padding = System::Windows::Forms::Padding(3);
			this->MainCommande->Size = System::Drawing::Size(1154, 616);
			this->MainCommande->TabIndex = 2;
			this->MainCommande->Text = L"Commande";
			this->MainCommande->UseVisualStyleBackColor = true;
			// 
			// dataGridView2
			// 
			this->dataGridView2->ColumnHeadersHeightSizeMode = System::Windows::Forms::DataGridViewColumnHeadersHeightSizeMode::AutoSize;
			this->dataGridView2->Location = System::Drawing::Point(8, 6);
			this->dataGridView2->Name = L"dataGridView2";
			this->dataGridView2->RowHeadersWidth = 51;
			this->dataGridView2->RowTemplate->Height = 24;
			this->dataGridView2->Size = System::Drawing::Size(1138, 273);
			this->dataGridView2->TabIndex = 1;
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
			this->CommandeCréer->Location = System::Drawing::Point(4, 25);
			this->CommandeCréer->Name = L"CommandeCréer";
			this->CommandeCréer->Padding = System::Windows::Forms::Padding(3);
			this->CommandeCréer->Size = System::Drawing::Size(1140, 299);
			this->CommandeCréer->TabIndex = 0;
			this->CommandeCréer->Text = L"Créer";
			this->CommandeCréer->UseVisualStyleBackColor = true;
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
			this->CommandeAfficher->Location = System::Drawing::Point(4, 25);
			this->CommandeAfficher->Name = L"CommandeAfficher";
			this->CommandeAfficher->Padding = System::Windows::Forms::Padding(3);
			this->CommandeAfficher->Size = System::Drawing::Size(1140, 299);
			this->CommandeAfficher->TabIndex = 2;
			this->CommandeAfficher->Text = L"Afficher";
			this->CommandeAfficher->UseVisualStyleBackColor = true;
			// 
			// CommandeSupprimer
			// 
			this->CommandeSupprimer->Location = System::Drawing::Point(4, 25);
			this->CommandeSupprimer->Name = L"CommandeSupprimer";
			this->CommandeSupprimer->Padding = System::Windows::Forms::Padding(3);
			this->CommandeSupprimer->Size = System::Drawing::Size(1140, 299);
			this->CommandeSupprimer->TabIndex = 3;
			this->CommandeSupprimer->Text = L"Supprimer";
			this->CommandeSupprimer->UseVisualStyleBackColor = true;
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
			this->PersonnelSupprimer->ResumeLayout(false);
			this->PersonnelSupprimer->PerformLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->GridViewCréerPersonnel))->EndInit();
			this->MainClient->ResumeLayout(false);
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->dataGridView1))->EndInit();
			this->TabClient->ResumeLayout(false);
			this->MainCommande->ResumeLayout(false);
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->dataGridView2))->EndInit();
			this->TabCommande->ResumeLayout(false);
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
	this->oDs = this->oSvc->selectionnerToutLePersonnel("Rsl");
	this->GridViewCréerPersonnel->DataSource = this->oDs;
	this->GridViewCréerPersonnel->DataMember = "Rsl";
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
	
	this->oSvc->updateDeletePersonnel(this->InputDeletePersonnel->Text);
	this->oSvc->supprimerUneAdresse(this->InputDeletePersonnel->Text);
	this->oSvc->supprimerUnPersonnel(this->InputDeletePersonnel->Text);

	RafraichirPersonnel(sender, e);
}
private: System::Void button1_Click_1(System::Object^ sender, System::EventArgs^ e) {
	this->oSvc->updateUnPersonnel(this->ModifIDPersonnel->Text, this->ModifNomPersonnel->Text, this->ModifPrenomPersonnel->Text, this->ModifDateNaissancePersonnel->Text, this->ModifDateEmbauchePersonnel->Text);
	this->oSvc->updateUneAdresse(this->ModifIDPersonnel->Text, this->ModifNomRuePersonnel->Text, this->ModifNumeroRuePersonnel->Text, this->ModifIDVillePersonnel->Text);

	RafraichirPersonnel(sender, e);
}
private: System::Void ModifIDPersonnel_TextChanged(System::Object^ sender, System::EventArgs^ e) {
}
};
}
