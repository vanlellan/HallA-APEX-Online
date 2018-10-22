////////////////////////////
//t0 calibration of S2    //
// by Y. Toyama Oct. 2018 //
////////////////////////////

#include <iostream>
#include <fstream>
#include <sstream>
#include <math.h>
#include <string>
#include <iomanip>
#include <csignal>
#include <stdlib.h>
#include <climits>
using namespace std;

#include "TApplication.h"
#include "TH1F.h"
#include "TH2F.h"
#include "TF1.h"
#include "TFile.h"
#include "TLeaf.h"
#include "TTree.h"
#include "TCut.h"
#include "TChain.h"
#include "TCanvas.h"
#include "TVector3.h"
#include "TGraph.h"
#include "TLine.h"
#include "TLatex.h"
#include "TText.h"
#include "TStyle.h"
#include "TROOT.h"
#include "TGraphErrors.h"
#include "TProfile.h"
#include "TSystem.h"
#include "TColor.h"
#include "TPaveText.h"
#include "TMath.h"
#include "TGaxis.h"
#include "TRandom.h"

#include "Tree.h"
#include "Setting.h"

#define Calibration


class s2_t0_calib : public Tree
{
 public:
         s2_t0_calib();
        ~s2_t0_calib();
  void makehist();
  void loop();
  void fit();
  void draw(); 
  void savecanvas(string ofname); 
  void SetMaxEvent( int N )  { ENumMax = N; }
  void SetRoot(string ifname);
  Setting *set;

  private:
    int GetMaxEvent() { return ENumMax; }
    int ENumMax;

    TH1F *h_s2l_time[16];

    TH1F *h_s2r_time[16];
    int run_num;
    TCanvas *c1,*c2,*c3,*c4,*c5;
};

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
s2_t0_calib::s2_t0_calib()
{

  gErrorIgnoreLevel = kError;
  gROOT->SetStyle("Plain");
  gROOT->SetBatch(1);

  gStyle->SetOptDate(0);
  gStyle->SetOptFit(1);
  gStyle->SetHistFillStyle(3002);
  gStyle->SetHistFillColor(0);
  gStyle->SetPadGridX(0);
  gStyle->SetPadGridY(0);
  gStyle->SetFrameLineWidth(1);
  gStyle->SetLineWidth(1);
  gStyle->SetOptDate(0);
//  gStyle->SetStatW(0.15);
  gStyle->SetStatFontSize(0.03);
  gStyle->SetStatTextColor(1);
  gStyle->SetTitleX(0.15);
  gStyle->SetTitleFontSize(0.05);
  gStyle->SetTitleTextColor(1);
  gStyle->SetGridWidth(1);
  gStyle->SetFrameLineWidth(1);
  gStyle->SetLineWidth(1);
  gStyle->SetNdivisions(510); // tertiary*10000 + secondary*100 + first
  gStyle->SetOptStat("iMenr");
  gStyle->SetPadRightMargin(0.12);
  gStyle->SetPadLeftMargin(0.14);
  gStyle->SetPadTopMargin(0.08);
  gStyle->SetPadBottomMargin(0.13);

  c1= new TCanvas("c1","c1",1400,800 );
  c2= new TCanvas("c2","c2",1400,800 );
  c3= new TCanvas("c3","c3",1400,800 );
  c4= new TCanvas("c4","c4",1400,800 );
  c5= new TCanvas("c5","c5",1400,800 );

  set = new Setting();
}
////////////////////////////////////////////////////////////////////////////
s2_t0_calib::~s2_t0_calib(){
}
////////////////////////////////////////////////////////////////////////////
void s2_t0_calib::SetRoot(string ifname){
  chain_tree(ifname);
  //readtreeS0L();
  //readtreeS2L();
  //readtreeS0R();
  readtreeS2R();
}
////////////////////////////////////////////////////////////////////////////
void s2_t0_calib::makehist(){
  for(int i=0;i<16;i++){
    h_s2l_time[i] = new TH1F(Form("h_s2l_time",i+1), Form("h_s2l_time",i+1)     ,800,-10,10);
    set->SetTH1(h_s2l_time[i]  ,Form("time S2L%d",i+1),"time","counts");

    h_s2r_time[i] = new TH1F(Form("h_s2r_time",i+1), Form("h_s2r_time",i+1)     ,800,-10,10);
    set->SetTH1(h_s2r_time[i]  ,Form("time S2R%d",i+1),"time","counts");
  }

}
////////////////////////////////////////////////////////////////////////////
void s2_t0_calib::loop(){

  if( GetMaxEvent()>0 && GetMaxEvent()<ENum) ENum = GetMaxEvent();
  for(int n=0;n<ENum;n++){
    if(n%1000==0)cout<<n <<" / "<<ENum<<endl;
    tree->GetEntry(n);
    for(int i=0;i<16;i++){
      //if(L_s2_t_pads==i)h_s2l_time[i] ->Fill(1.e+6*L_s2_time[i]);
      if(R_s2_t_pads==i)h_s2r_time[i] ->Fill(1.e+6*R_s2_time[i]);
      //cout<<L_s2_time[i]<<endl;
    }
  }

}
////////////////////////////////////////////////////////////////////////////
void s2_t0_calib::fit(){

}
////////////////////////////////////////////////////////////////////////////
void s2_t0_calib::draw(){

  c1->Clear();c1->Divide(3,4);
  for(int i=0;i<12;i++){
    c1->cd(i+1);gPad->SetLogy(1);h_s2l_time[i]->Draw();
  }

  c2->Clear();c2->Divide(3,4);
  for(int i=0;i<12;i++){
    c2->cd(i+1);gPad->SetLogy(1);h_s2r_time[i]->Draw();
  }

}
////////////////////////////////////////////////////////////////////////////
void s2_t0_calib::savecanvas(string ofname){
  c1->Print(Form("%s[",ofname.c_str()) );
  c1->Print(Form("%s" ,ofname.c_str()) );
  c2->Print(Form("%s" ,ofname.c_str()) );
  c3->Print(Form("%s" ,ofname.c_str()) );
  c4->Print(Form("%s" ,ofname.c_str()) );
  c5->Print(Form("%s" ,ofname.c_str()) );
  c5->Print(Form("%s]",ofname.c_str()) );
cout<<ofname<<" saved"<<endl;
}
////////////////////////////////////////////////////////////////////////////
//////////////////////////// main //////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
int main(int argc, char** argv){

  string ifname = "rootfiles/cosmic1020.root";
  string ofname = "toyamacro/pdf/s2_t0_calib1020.pdf";
  string paramname = "twlk_param/default.param";
  int ch;
  int MaxNum = 0;
  bool output_flag = false;
  bool output_tree_flag = false;
  bool draw_flag = true;
  bool coin_flag = false;
  string pngname;
  extern char *optarg;
  while((ch=getopt(argc,argv,"hf:w:n:bcop:"))!=-1){
    switch(ch){
    case 'f':
      ifname = optarg;
      cout<<"input filename : "<<ifname<<endl;
      break;
    case 'w':
      output_flag = true;
      draw_flag = false;
      ofname = optarg;
      cout<<"output filename : "<<ofname<<endl;
      break;
    case 'n':
      MaxNum = atoi(optarg);
      break;
    case 'c':
      coin_flag = true;
      break;
    case 'b':
      draw_flag = false;
      cout<<"BACH MODE!"<<endl;
      break;
    case 'p':
      draw_flag = false;
      paramname = optarg;
      cout<<"input param name : "<<paramname<<endl;
      break;
    case 'h':
      cout<<"-f : input root filename"<<endl;
      cout<<"-w : output pdf filename"<<endl;
      cout<<"-n : maximum number of analysed events"<<endl;
      cout<<"-p : print png file"<<endl;
      return 0;
      break;
    case '?':
      cout<<"unknown option...."<<endl;
      return 0;
      break;
    default:
      cout<<"type -h to see help!!"<<endl;
      return 0;
    }
  }

  TApplication *theApp = new TApplication("App", &argc, argv);
  s2_t0_calib *calib = new s2_t0_calib();

  calib->SetMaxEvent(MaxNum);
  calib->SetRoot(ifname);
  calib->makehist();
  calib->loop();
  calib->fit();
  calib->draw();
  if(output_flag)calib->savecanvas(ofname);
  delete calib;

  gSystem->Exit(1);
  theApp->Run();
  return 0;
}

