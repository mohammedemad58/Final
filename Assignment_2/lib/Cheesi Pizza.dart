import 'package:flutter/material.dart';
class CheesiPizza extends StatefulWidget {
  const CheesiPizza({Key? key}) : super(key: key);
  @override
  State<CheesiPizza> createState() => _CheesiPizzaState();
}
class _CheesiPizzaState extends State<CheesiPizza> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: Container(
        child: Column(
            children: <Widget>[
              Image.asset('Images/Cheese-pizza-1.webp'),
              DataTable(

                columns: [
                  DataColumn(label: Text("Size")),
                  DataColumn(label: Text("Price"))
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("S")),
                    DataCell(Text("20")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("M")),
                    DataCell(Text("50")),

                  ]),
                  DataRow(cells: [
                    DataCell(Text("L")),
                    DataCell(Text("80")),
                  ])
                ],
              ),
            ]
        ),
      ),
    ),);
  }
}