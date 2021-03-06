import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model.dart';
import '../../page/P5TRITRATING/TRITRATINGVar.dart';

abstract class TRITRATINGDataSetEvent {}

String server = 'http://127.0.0.1:15000/';

class GetDataPressed extends TRITRATINGDataSetEvent {}

class UpdateDataPressed extends TRITRATINGDataSetEvent {}

class CounterValue extends TRITRATINGDataSetBloc {
  final int value;
  CounterValue(this.value);
}

class TRITRATINGDataSetBloc
    extends Bloc<TRITRATINGDataSetEvent, List<dataset>> {
  /// {@macro counter_bloc}
  TRITRATINGDataSetBloc() : super(<dataset>[]) {
    on<GetDataPressed>((event, emit) {
      return _getdata([], emit);
    });
    on<UpdateDataPressed>((event, emit) {
      return _updata([], emit);
    });
  }
  Future<void> _getdata(
      List<dataset> toAdd, Emitter<List<dataset>> emit) async {
    final response = await Dio().post(
      server + "gettritratingmaster",
      data: {},
    );
    List<dataset> output = [];

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;

      for (int i = 0; i < databuff.length; i++) {
        output.add(dataset(
          id: i + 1,
          f01: databuff[i]['MATNO'],
          f02: databuff[i]['ProductName'],
          f03: databuff[i]['SPEC']['COLOR'] ?? '',
          f04: databuff[i]['SPEC']['APPEARANCE'] ?? '',
          f05: databuff[i]['SPEC']['SG'] == null
              ? ''
              : databuff[i]['SPEC']['SG']['HI'].toString(),
          f06: databuff[i]['SPEC']['SG'] == null
              ? ''
              : databuff[i]['SPEC']['SG']['LOW'].toString(),
          f07: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['HI'].toString(),
          f08: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['LOW'].toString(),
          f09: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['HI'].toString(),
          f10: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['LOW'].toString(),
          f11: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'].toString(),
          f12: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'].toString(),
          f13: databuff[i]['SPEC']['FACTOR'] == null
              ? ''
              : databuff[i]['SPEC']['FACTOR']['HI'].toString(),
          f14: databuff[i]['SPEC']['FACTOR'] == null
              ? ''
              : databuff[i]['SPEC']['FACTOR']['LOW'].toString(),
          f15: databuff[i]['SPEC']['ACO'] == null
              ? ''
              : databuff[i]['SPEC']['ACO']['HI'].toString(),
          f16: databuff[i]['SPEC']['ACO'] == null
              ? ''
              : databuff[i]['SPEC']['ACO']['LOW'].toString(),
        ));
      }
    } else {}
    emit(output);
  }

  Future<void> _updata(List<dataset> toAdd, Emitter<List<dataset>> emit) async {
//--------------------------- return
    final response = await Dio().post(
      server + "uptritratingmaster",
      data: {
        "MATNO": TRITRATING.con01,
        "ProductName": TRITRATING.con02,
        "SPEC": {
          "COLOR": TRITRATING.con03,
          "APPEARANCE": TRITRATING.con04,
          "SG": {
            "HI": TRITRATING.conMAX01,
            "LOW": TRITRATING.conMIN01,
          },
          "TA": {
            "HI": TRITRATING.conMAX02,
            "LOW": TRITRATING.conMIN02,
          },
          "T_Al": {
            "HI": TRITRATING.conMAX03,
            "LOW": TRITRATING.conMIN03,
          },
          "PH": {
            "HI": TRITRATING.conMAX04,
            "LOW": TRITRATING.conMIN04,
          },
          "FACTOR": {
            "HI": TRITRATING.conMAX05,
            "LOW": TRITRATING.conMIN05,
          },
          "ACO": {
            "HI": TRITRATING.conMAX06,
            "LOW": TRITRATING.conMIN06,
          },
        },
        "SPECcoa": {
          "COLOR": TRITRATING.con03COA,
          "APPEARANCE": TRITRATING.con04COA,
          "SG": {
            "HI": TRITRATING.conMAX01COA,
            "LOW": TRITRATING.conMIN01COA,
          },
          "TA": {
            "HI": TRITRATING.conMAX02COA,
            "LOW": TRITRATING.conMIN02COA,
          },
          "T_Al": {
            "HI": TRITRATING.conMAX03COA,
            "LOW": TRITRATING.conMIN03COA,
          },
          "PH": {
            "HI": TRITRATING.conMAX04COA,
            "LOW": TRITRATING.conMIN04COA,
          },
          "FACTOR": {
            "HI": TRITRATING.conMAX05COA,
            "LOW": TRITRATING.conMIN05COA,
          },
          "ACO": {
            "HI": TRITRATING.conMAX06COA,
            "LOW": TRITRATING.conMIN06COA,
          },
        }
      },
    );
    List<dataset> output = [];

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;

      for (int i = 0; i < databuff.length; i++) {
        output.add(dataset(
          id: i + 1,
          f01: databuff[i]['MATNO'],
          f02: databuff[i]['ProductName'],
          f03: databuff[i]['SPEC']['COLOR'] ?? '',
          f04: databuff[i]['SPEC']['APPEARANCE'] ?? '',
          f05: databuff[i]['SPEC']['SG'] == null
              ? ''
              : databuff[i]['SPEC']['SG']['HI'].toString(),
          f06: databuff[i]['SPEC']['SG'] == null
              ? ''
              : databuff[i]['SPEC']['SG']['LOW'].toString(),
          f07: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['HI'].toString(),
          f08: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['LOW'].toString(),
          f09: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['HI'].toString(),
          f10: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['LOW'].toString(),
          f11: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'].toString(),
          f12: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'].toString(),
          f13: databuff[i]['SPEC']['FACTOR'] == null
              ? ''
              : databuff[i]['SPEC']['FACTOR']['HI'].toString(),
          f14: databuff[i]['SPEC']['FACTOR'] == null
              ? ''
              : databuff[i]['SPEC']['FACTOR']['LOW'].toString(),
          f15: databuff[i]['SPEC']['ACO'] == null
              ? ''
              : databuff[i]['SPEC']['ACO']['HI'].toString(),
          f16: databuff[i]['SPEC']['ACO'] == null
              ? ''
              : databuff[i]['SPEC']['ACO']['LOW'].toString(),
          //
          f65: databuff[i]['SPECcoa']['COLOR'] ?? '',
          f66: databuff[i]['SPECcoa']['APPEARANCE'] ?? '',
          f67: databuff[i]['SPECcoa']['SG'] == null
              ? ''
              : databuff[i]['SPECcoa']['SG']['HI'].toString(),
          f68: databuff[i]['SPECcoa']['SG'] == null
              ? ''
              : databuff[i]['SPECcoa']['SG']['LOW'].toString(),
          f69: databuff[i]['SPECcoa']['TA'] == null
              ? ''
              : databuff[i]['SPECcoa']['TA']['HI'].toString(),
          f70: databuff[i]['SPECcoa']['TA'] == null
              ? ''
              : databuff[i]['SPECcoa']['TA']['LOW'].toString(),
          f71: databuff[i]['SPECcoa']['T_Al'] == null
              ? ''
              : databuff[i]['SPECcoa']['T_Al']['HI'].toString(),
          f72: databuff[i]['SPECcoa']['T_Al'] == null
              ? ''
              : databuff[i]['SPECcoa']['T_Al']['LOW'].toString(),
          f73: databuff[i]['SPECcoa']['PH'] == null
              ? ''
              : databuff[i]['SPECcoa']['PH']['HI'].toString(),
          f74: databuff[i]['SPECcoa']['PH'] == null
              ? ''
              : databuff[i]['SPECcoa']['PH']['LOW'].toString(),
          f75: databuff[i]['SPECcoa']['FACTOR'] == null
              ? ''
              : databuff[i]['SPECcoa']['FACTOR']['HI'].toString(),
          f76: databuff[i]['SPECcoa']['FACTOR'] == null
              ? ''
              : databuff[i]['SPECcoa']['FACTOR']['LOW'].toString(),
          f77: databuff[i]['SPECcoa']['ACO'] == null
              ? ''
              : databuff[i]['SPECcoa']['ACO']['HI'].toString(),
          f78: databuff[i]['SPECcoa']['ACO'] == null
              ? ''
              : databuff[i]['SPECcoa']['ACO']['LOW'].toString(),
        ));
      }
    } else {}
    emit(output);
  }
}
