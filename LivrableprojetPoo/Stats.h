#pragma once
namespace NS_Comp_Mappage
{ 
	ref class Stats
	{
	private:

	public:
		System::String^ PanierMoyen();
		System::String^ ChiffreAffaire(System::String^);
		System::String^ SeuilReap(System::String^);
		System::String^ MontantAchat1Client(System::String^);
		System::String^ PlusVendus();
		System::String^ MoinsVendus();
		System::String^ ValCom();
		System::String^ ValAchat();
		System::String^ SimulVar(System::String^, System::String^, System::String^, System::String^, System::String^, System::String^, System::String^, System::String^);
	};
}


