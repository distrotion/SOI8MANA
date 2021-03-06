import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/04-PLX.dart';
import '../bloc/BlocEvent/10-dropdown.dart';
import '../data/model.dart';
import 'P4PLX/PLXMain.dart';
import 'P4PLX/PLXVar.dart';
import 'page0.dart';
import '../data/global.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page4BlocDROPDOWN();
  }
}

class Page4BlocDROPDOWN extends StatelessWidget {
  /// {@macro counter_page}
  const Page4BlocDROPDOWN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => DROPDOWN_BLOCK(),
        child: BlocBuilder<DROPDOWN_BLOCK, dropdown>(
          builder: (context, DD) {
            PLX.CO = DD.CO;
            PLX.AP = DD.AP;
            return Page4BlocTableBody();
          },
        ));
  }
}

class Page4BlocTableBody extends StatelessWidget {
  /// {@macro counter_page}
  const Page4BlocTableBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => PLXDataSetBloc(),
        child: BlocBuilder<PLXDataSetBloc, List<dataset>>(
          builder: (context, data) {
            return Page4Body(
              data: data,
            );
          },
        ));
  }
}

class Page4Body extends StatelessWidget {
  Page4Body({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  Widget build(BuildContext context) {
    return PLXMain(
      data: data,
    );
  }
}
