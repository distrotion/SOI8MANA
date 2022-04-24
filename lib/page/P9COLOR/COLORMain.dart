import 'package:flutter/material.dart';

import '../../data/model.dart';
import 'COLORTable.dart';

class COLORMain extends StatelessWidget {
  COLORMain({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  Widget build(BuildContext context) {
    // print('PremixMain-->${data}');
    return Center(
      child: COLORDataTable(
        data: data,
      ),
    );
  }
}
