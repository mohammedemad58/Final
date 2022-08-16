import 'package:flutter/material.dart';
class VeggiPizza extends StatefulWidget {
  const VeggiPizza({Key? key}) : super(key: key);
  @override
  State<VeggiPizza> createState() => _VeggiPizzaState();
}
class _VeggiPizzaState extends State<VeggiPizza> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
        body: Container(
          child: Column(
              children: <Widget>[
                Image.asset('Images/brenan-greene-HPZs4EXRFSU-unsplash.jpg'),
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