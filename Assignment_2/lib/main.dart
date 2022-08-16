import 'package:flutter/material.dart';
import 'Home.dart';
import 'FaceBook.dart';
import 'Instagram.dart';
import 'Veggi Pizza.dart';
import 'Cheesi Pizza.dart';
import 'Frenchi Fries.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex=0;
  final List<Widget>_children=[Home(),Facebook(),Instagram()];
  void onTappedBar(int index){
    setState(() {
      _currentIndex=index;
    });
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

       home: Scaffold(appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Wow Pizza!",)
    ),


      drawer: Drawer(
        width: 280,
        backgroundColor: Colors.white,
        child: ListView(

          children: <Widget>[
            // DrawerHeader(
            //   decoration: BoxDecoration(
            //
            //     color: Colors.grey,
            //   ),
            //   child: Text("",),margin: EdgeInsets.all(1),
            //
            // ),
            ListTile(

              title: Text("Veggi Pizza", style: TextStyle(color: Colors.orange),),
              leading:Image.asset("Images/brenan-greene-HPZs4EXRFSU-unsplash.jpg",width: 70,height: 70,),
              trailing:Icon(Icons.arrow_forward_ios_outlined),onTap: (){Navigator.pushNamed(context, '0');},

            ),
            ListTile(
              title: Text("Cheesi Pizza", style: TextStyle(color: Colors.orange),),
              leading:Image.asset("Images/Cheese-pizza-1.webp",width: 70,height: 70,),
              trailing:Icon(Icons.arrow_forward_ios_outlined),onTap: (){Navigator.pushNamed(context, '1');},
            ),
            ListTile(
              title: Text(
                "Frenchi Fries", style: TextStyle(color: Colors.orange),),
              leading:Image.asset("Images/how-to-make-homemade-french-fries-2215971-hero-01-02f62a016f3e4aa4b41d0c27539885c3.jpg",width: 70,height: 70,),
              trailing:Icon(Icons.arrow_forward_ios_outlined),onTap:(){Navigator.pushNamed(context, '2');}
            ),
          ],

        ),

      ),
      //
body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:Colors.amber,
        selectedItemColor: Colors.white70,
        unselectedItemColor: Colors.white30,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex ,
        onTap: (onTappedBar),

        items: [
          //GestureDetector(child:BottomNavigationBarItem(label:"Home",icon:Icon(Icons.home)),onTap: (){Navigator.pushNamed(context, '0')},),
          BottomNavigationBarItem(label:"Home",icon:Icon(Icons.home)),
          BottomNavigationBarItem(label:"Facebook",icon:Icon(Icons.facebook), ),
          BottomNavigationBarItem(label:"Instagram",icon:Icon(Icons.linked_camera_outlined)),
        ],
      ),
    ),
      routes: {
         '0':(context)=>VeggiPizza(),
        '1':(context)=>CheesiPizza(),
        '2':(context)=>FrechiFries()
      },
    );

  }}









