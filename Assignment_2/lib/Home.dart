import 'package:flutter/material.dart';
import 'FaceBook.dart';
import 'Instagram.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int _currentIndex=0;
  final List<Widget>_children=[Home(),Facebook(),Instagram()];
  void onTappedBar(int index){
    setState(() {
      _currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(home: Scaffold(
      // bottomSheet:  Container(child:Column(children:<Widget>[
      // Image.asset('Images/brenan-greene-HPZs4EXRFSU-unsplash.jpg'),Text("Hi, I'm Assistant,what can I help you order?",style: TextStyle(fontSize: 40),),
      //
      //       ],
      //   ),
      //     ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            TabBar(
              indicator: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.limeAccent, Colors.orangeAccent]),
                borderRadius: BorderRadius.circular(200),),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.deepOrange,
              indicatorColor: Colors.orange,
              tabs: [
                Tab(text: "Veggi Pizza",),
                Tab(text: "Cheesi Pizza",),
                Tab(text: "Frenchi Fries",),
              ],

            ),
            Expanded(child: TabBarView(
              children: [

                Container(
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
                Container(

                  // decoration:BoxDecoration(image: DecorationImage(image:AssetImage('Images/Cheese-pizza-1.webp'),),),
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
                Container(

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
              ],
            )
            ),
          ],
        ),
      ),
    ),
    );

  }}






