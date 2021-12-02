#include "pch.h"
#include "Stats.h"
System::String^ NS_Comp_Mappage::Stats::PanierMoyen() {
	return "Exec PanierMoyen ;";
};
System::String^ NS_Comp_Mappage::Stats::ChiffreAffaire(System::String^ Date) {
	return "Exec Chiffre_Affaire_1Mois '"+Date+"' ;";
};
System::String^ NS_Comp_Mappage::Stats::SeuilReap(System::String^ Valeur) {
	return "Exec Seuil_Reaprovisionnenement "+Valeur+";";
};
System::String^ NS_Comp_Mappage::Stats::MontantAchat1Client(System::String^ IDClient) {
	return "Exec Montant_Achats_Client "+IDClient+" ;";
};
System::String^ NS_Comp_Mappage::Stats::PlusVendus() {
	return "Exec Produit_Plus_Vendus ;";
};
System::String^ NS_Comp_Mappage::Stats::MoinsVendus() {
	return "Exec Produit_Moins_Vendus ;";
};
System::String^ NS_Comp_Mappage::Stats::ValCom() {
	return "Exec ValCom ;";
};
System::String^ NS_Comp_Mappage::Stats::ValAchat() {
	return "Exec Valeur_Achat_Stock ;";
};
System::String^ NS_Comp_Mappage::Stats::SimulVar(System::String^ TVAn, System::String^ TVAi, System::String^ TVAr, System::String^ TVAp, System::String^ Import, System::String^ Marge, System::String^ Remise, System::String^ Demarque) {
	return "Exec SimulVariation "+TVAn+", "+TVAi+", "+TVAr+", "+TVAp+", "+Import+", "+Marge+", "+Remise+", "+Demarque+" ;";
};