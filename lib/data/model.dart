import 'package:flutter/material.dart';

class dataset {
  dataset({
    this.id = 0,
    this.f01 = '',
    this.f02 = '',
    this.f03 = '',
    this.f04 = '',
    this.f05 = '',
    this.f06 = '',
    this.f07 = '',
    this.f08 = '',
    this.f09 = '',
    this.f10 = '',
    this.f11 = '',
    this.f12 = '',
    this.f13 = '',
    this.f14 = '',
    this.f15 = '',
    this.f16 = '',
    this.f17 = '',
    this.f18 = '',
    this.f19 = '',
    this.f20 = '',
    this.f21 = '',
    this.f22 = '',
    this.f23 = '',
    this.f24 = '',
    this.f25 = '',
    this.f26 = '',
    this.f27 = '',
    this.f28 = '',
    this.f29 = '',
    this.f30 = '',
    this.f31 = '',
    this.f32 = '',
    this.f33 = '',
    this.f34 = '',
    this.f35 = '',
    this.f36 = '',
    this.f37 = '',
    this.f38 = '',
    this.f39 = '',
    this.f40 = '',
    this.f41 = '',
    this.f42 = '',
    this.f43 = '',
    this.f44 = '',
    this.f45 = '',
    this.f46 = '',
    this.f47 = '',
    this.f48 = '',
    this.f49 = '',
    this.f50 = '',
  });
  int id;
  String f01;
  String f02;
  String f03;
  String f04;
  String f05;
  String f06;
  String f07;
  String f08;
  String f09;
  String f10;
  String f11;
  String f12;
  String f13;
  String f14;
  String f15;
  String f16;
  String f17;
  String f18;
  String f19;
  String f20;
  String f21;
  String f22;
  String f23;
  String f24;
  String f25;
  String f26;
  String f27;
  String f28;
  String f29;
  String f30;
  String f31;
  String f32;
  String f33;
  String f34;
  String f35;
  String f36;
  String f37;
  String f38;
  String f39;
  String f40;
  String f41;
  String f42;
  String f43;
  String f44;
  String f45;
  String f46;
  String f47;
  String f48;
  String f49;
  String f50;

  bool selected = false;
}

List<dataset> ZeroDataset = [];

class s8cardvalue {
  s8cardvalue({
    this.value01 = '',
    this.coValue01 = Colors.white,
    this.value02 = '',
    this.coValue02 = Colors.white,
    this.value03 = '',
    this.coValue03 = Colors.white,
    this.value04 = '',
    this.coValue04 = Colors.white,
  });
  String value01;
  Color coValue01;
  String value02;
  Color coValue02;
  String value03;
  Color coValue03;
  String value04;
  Color coValue04;
}

//-------------------------------------------------
class unitdata {
  unitdata({
    this.POID = '',
    this.MATNO = '',
    this.PO = '',
    this.PLANT = '',
    this.MASTERdb = '',
    this.SumStatus = '',
    required this.COLOR,
    required this.APPEARANCE,
    required this.SG,
    required this.FA,
    required this.TA,
    required this.ZN,
    required this.NI,
    required this.MN,
    required this.T_Al,
    required this.PH,
    required this.NVC,
    required this.PURITY,
    required this.Brix,
    required this.CR3,
    required this.CECM,
    required this.CE,
    required this.TC,
    required this.THOP,
    required this.FHOP,
    required this.FT,
    required this.Viscosity,
    required this.PaticleSize,
    required this.FACTOR,
    required this.ACO,
    //
    required this.F_Al,
    required this.AL,
    required this.CR6,
    required this.TCr,
    required this.Starch,
    required this.V,
    required this.ZR,
    required this.TI,
    required this.Surfactant,
    required this.FE,
    required this.RP,
    required this.A_CO,
    required this.BABCOCK,
  });
  String POID;
  String MATNO;
  String PO;
  String PLANT;
  String MASTERdb;
  String SumStatus;
  STRjude COLOR = STRjude();
  STRjude APPEARANCE = STRjude();
  //
  DOUjude SG = DOUjude(SPEC: edgedata());
  DOUjude FA = DOUjude(SPEC: edgedata());
  DOUjude TA = DOUjude(SPEC: edgedata());
  DOUjude ZN = DOUjude(SPEC: edgedata());
  DOUjude NI = DOUjude(SPEC: edgedata());
  DOUjude MN = DOUjude(SPEC: edgedata());
  //
  DOUjude T_Al = DOUjude(SPEC: edgedata());
  DOUjude PH = DOUjude(SPEC: edgedata());
  DOUjude NVC = DOUjude(SPEC: edgedata());
  DOUjude PURITY = DOUjude(SPEC: edgedata());
  //
  DOUjude Brix = DOUjude(SPEC: edgedata());
  DOUjude CR3 = DOUjude(SPEC: edgedata());
  DOUjude CECM = DOUjude(SPEC: edgedata());
  DOUjude CE = DOUjude(SPEC: edgedata());
  //
  DOUjude TC = DOUjude(SPEC: edgedata());
  DOUjude THOP = DOUjude(SPEC: edgedata());
  DOUjude FHOP = DOUjude(SPEC: edgedata());
  DOUjude FT = DOUjude(SPEC: edgedata());
  DOUjude Viscosity = DOUjude(SPEC: edgedata());
  DOUjude PaticleSize = DOUjude(SPEC: edgedata());
  //
  DOUjude FACTOR = DOUjude(SPEC: edgedata());
  DOUjude ACO = DOUjude(SPEC: edgedata());
  //
  DOUjude F_Al = DOUjude(SPEC: edgedata());
  DOUjude AL = DOUjude(SPEC: edgedata());
  DOUjude CR6 = DOUjude(SPEC: edgedata());
  DOUjude TCr = DOUjude(SPEC: edgedata());
  DOUjude Starch = DOUjude(SPEC: edgedata());
  DOUjude V = DOUjude(SPEC: edgedata());
  DOUjude ZR = DOUjude(SPEC: edgedata());
  DOUjude TI = DOUjude(SPEC: edgedata());
  DOUjude Surfactant = DOUjude(SPEC: edgedata());
  DOUjude FE = DOUjude(SPEC: edgedata());
  DOUjude RP = DOUjude(SPEC: edgedata());
  //
  DOUjude A_CO = DOUjude(SPEC: edgedata());
  DOUjude BABCOCK = DOUjude(SPEC: edgedata());
}

class STRjude {
  STRjude({
    this.SPEC = '',
    this.active = false,
    this.T1 = '',
    this.T1St = '',
    this.T1Stc_comment = '',
    this.T2 = '',
    this.T2St = '',
    this.T2Stc_comment = '',
    this.T3 = '',
    this.T3St = '',
    this.T3Stc_comment = '',
    this.AllSt = '',
  });
  String SPEC;
  bool active;
  String T1;
  String T1St;
  String T1Stc_comment;
  String T2;
  String T2St;
  String T2Stc_comment;
  String T3;
  String T3St;
  String T3Stc_comment;
  String AllSt;
}

class DOUjude {
  DOUjude({
    required this.SPEC,
    this.active = false,
    this.T1 = '',
    this.T1St = '',
    this.T1Stc_comment = '',
    this.T2 = '',
    this.T2St = '',
    this.T2Stc_comment = '',
    this.T3 = '',
    this.T3St = '',
    this.T3Stc_comment = '',
    this.AllSt = '',
  });
  edgedata SPEC = edgedata();
  bool active;
  String T1;
  String T1St;
  String T1Stc_comment;
  String T2;
  String T2St;
  String T2Stc_comment;
  String T3;
  String T3St;
  String T3Stc_comment;
  String AllSt;
}

class edgedata {
  edgedata({
    this.HI = '',
    this.LOW = '',
  });
  String HI;
  String LOW;
}

class dropdown {
  dropdown({required this.CO, required this.AP});
  List<String> CO;
  List<String> AP;
}
