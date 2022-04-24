import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/02-CoilCoating.dart';
import '../../bloc/BlocEvent/10-dropdown.dart';
import '../../bloc/Cubit/Rebuild.dart';
import '../../data/model.dart';
import '../../widget/common/Loading.dart';
import 'CoilCoatingCon.dart';
import 'CoilCoatingVar.dart';

String _searchResult = '';
late BuildContext CoilCoatingContexttable;

class CoilCoatingDataTable extends StatefulWidget {
  CoilCoatingDataTable({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  _CoilCoatingDataTableState createState() => _CoilCoatingDataTableState();
}

class _CoilCoatingDataTableState extends State<CoilCoatingDataTable> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  void initState() {
    super.initState();
    context.read<DROPDOWN_BLOCK>().add(DROPDOWN_GET());
    context.read<CoilCoatingDataSetBloc>().add(GetDataPressed());
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CoilCoatingContexttable = context;
    final _MyData _data = _MyData(context, widget.data ?? []);

    void _sort<T>(Comparable<T> Function(dataset d) getField, int columnIndex,
        bool ascending) {
      _data._sort<T>(getField, ascending);
      setState(() {
        _sortColumnIndex = columnIndex;
        _sortAscending = ascending;
      });
    }

    return SingleChildScrollView(
      child: SizedBox(
        width: 1200,
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.search),
                title: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                    onChanged: (value) {
                      setState(() {
                        _searchResult = value;
                      });
                    }),
                trailing: IconButton(
                  icon: const Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      controller.clear();
                      _searchResult = '';
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: 1200,
                child: PaginatedDataTable(
                  source: _data,
                  header: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('CoilCoating FORMULA'),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // context
                              //     .read<CoilCoatingDataSetBloc>()
                              //     .add(GetDataPressed());

                              onLoadingType01(
                                  context,
                                  () {},
                                  context
                                      .read<CoilCoatingDataSetBloc>()
                                      .add(GetDataPressed()));
                              // BlocProvider.of<BlocPageRebuild>(context)
                              //     .rebuildPage();
                            },
                            child: const Icon(
                              Icons.refresh,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              COILCOATING.nc = true;
                              COILCOATING.iscon01 = true;
                              COILCOATING.con01 = '';
                              COILCOATING.con02 = '';
                              COILCOATING.con03 = '';
                              COILCOATING.con04 = '';
                              COILCOATING.conMAX01 = '';
                              COILCOATING.conMAX02 = '';
                              COILCOATING.conMAX03 = '';
                              COILCOATING.conMAX04 = '';
                              COILCOATING.conMAX05 = '';
                              COILCOATING.conMAX06 = '';
                              COILCOATING.conMAX07 = '';
                              COILCOATING.conMIN01 = '';
                              COILCOATING.conMIN02 = '';
                              COILCOATING.conMIN03 = '';
                              COILCOATING.conMIN04 = '';
                              COILCOATING.conMIN05 = '';
                              COILCOATING.conMIN06 = '';
                              COILCOATING.conMIN07 = '';
                              COILCOATINGConsoleBox();
                            },
                            // style: ButtonStyle(
                            //   backgroundColor:
                            //       MaterialStateProperty.all(Colors.red),
                            // ),

                            child: const Text("NEW"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  columns: [
                    DataColumn(
                        label: const Text('ID'),
                        onSort: (int columnIndex, bool ascending) => _sort<num>(
                            (dataset d) => d.id, columnIndex, ascending)),
                    DataColumn(
                        label: const Text('Field01'),
                        onSort: (int columnIndex, bool ascending) =>
                            _sort<String>(
                                (dataset d) => d.f01, columnIndex, ascending)),
                    DataColumn(
                        label: const Text('Field02'),
                        onSort: (int columnIndex, bool ascending) =>
                            _sort<String>(
                                (dataset d) => d.f02, columnIndex, ascending)),
                    // DataColumn(
                    //     label: const Text('Field03'),
                    //     onSort: (int columnIndex, bool ascending) =>
                    //         _sort<String>(
                    //             (dataset d) => d.f03, columnIndex, ascending)),
                    // DataColumn(
                    //     label: const Text('Field04'),
                    //     onSort: (int columnIndex, bool ascending) =>
                    //         _sort<String>(
                    //             (dataset d) => d.f04, columnIndex, ascending)),
                    DataColumn(
                        label: const Text('Field05'),
                        onSort: (int columnIndex, bool ascending) =>
                            _sort<String>(
                                (dataset d) => d.f05, columnIndex, ascending)),
                  ],
                  columnSpacing: 100,
                  horizontalMargin: 10,
                  rowsPerPage: 5,
                  sortColumnIndex: _sortColumnIndex,
                  sortAscending: _sortAscending,
                  showCheckboxColumn: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// The "soruce" of the table
class _MyData extends DataTableSource {
  // Generate some made-up data
  final BuildContext context;
  late List<dataset> _data;
  late List<dataset> input;
  List<dataset> _data_exp = [];

  int _selectedCount = 0;
  _MyData.empty(this.context) {
    _data = [];
  }
  _MyData(this.context, this.input) {
    _data = input;
    _data_exp = [];

    for (int i = 0; i < _data.length; i++) {
      if (_data[i].f01.toLowerCase().contains(_searchResult) ||
          _data[i].f02.toLowerCase().contains(_searchResult) ||
          _data[i].f03.toLowerCase().contains(_searchResult) ||
          _data[i].f04.toLowerCase().contains(_searchResult) ||
          _data[i].f05.toLowerCase().contains(_searchResult)) {
        _data_exp.add(_data[i]);
      }
    }
  }

  void _sort<T>(Comparable<T> Function(dataset d) getField, bool ascending) {
    _data_exp.sort((dataset a, dataset b) {
      final Comparable<T> aValue = getField(a);
      final Comparable<T> bValue = getField(b);
      return ascending
          ? Comparable.compare(aValue, bValue)
          : Comparable.compare(bValue, aValue);
    });
    notifyListeners();
  }

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => _data_exp.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    final dataset data = _data_exp[index];

    return DataRow.byIndex(
        index: index,
        selected: data.selected,
        onSelectChanged: (value) {
          if (data.selected != value) {
            //function
          }
        },
        cells: [
          DataCell(Text(data.id.toString())),
          DataCell(Text(data.f01)),
          DataCell(Text(data.f02)),
          // DataCell(Text(data.f03)),
          // DataCell(Text(data.f04)),
          DataCell(Row(
            children: [
              InkWell(
                onTap: () {
                  COILCOATING.nc = false;
                  COILCOATING.con01 = data.f01;
                  COILCOATING.con02 = data.f02;
                  COILCOATING.con03 = data.f03;
                  COILCOATING.con04 = data.f04;
                  COILCOATING.conMAX01 = data.f05;
                  COILCOATING.conMIN01 = data.f06;
                  COILCOATING.conMAX02 = data.f07;
                  COILCOATING.conMIN02 = data.f08;
                  COILCOATING.conMAX03 = data.f09;
                  COILCOATING.conMIN03 = data.f10;
                  COILCOATING.conMAX04 = data.f11;
                  COILCOATING.conMIN04 = data.f12;
                  COILCOATING.conMAX05 = data.f13;
                  COILCOATING.conMIN05 = data.f14;
                  COILCOATING.conMAX06 = data.f15;
                  COILCOATING.conMIN06 = data.f16;
                  COILCOATING.conMAX07 = data.f17;
                  COILCOATING.conMIN07 = data.f17;
                  COILCOATINGConsoleBox();
                  // print(data.f01);
                },
                child: const Icon(
                  Icons.edit,
                ),
              ),
              // InkWell(
              //   onTap: () {
              //     print(data.f02);
              //   },
              //   child: const Icon(
              //     Icons.delete,
              //   ),
              // )
            ],
          )),
        ]);
  }
}
