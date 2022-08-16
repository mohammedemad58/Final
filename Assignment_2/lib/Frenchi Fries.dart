import 'package:flutter/material.dart';
class FrechiFries extends StatefulWidget {
  const FrechiFries({Key? key}) : super(key: key);
  @override
  State<FrechiFries> createState() => _FrechiFriesState();
}
class _FrechiFriesState extends State<FrechiFries> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: Container(
        child: Column(
            children: <Widget>[
              Image.asset('Images/how-to-make-homemade-french-fries-2215971-hero-01-02f62a016f3e4aa4b41d0c27539885c3.jpg'),
              DataTable(

                columns: [
                  DataColumn(label: Text("Size")),
                  DataColumn(label: Text("Price"))
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("S")),
                    DataCell(Text("10")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("M")),
                    DataCell(Text("25")),

                  ]),
                  DataRow(cells: [
                    DataCell(Text("L")),
                    DataCell(Text("40")),
                  ])
                ],
              ),
            ]
        ),
      ),
      
    )
    );

  }
}