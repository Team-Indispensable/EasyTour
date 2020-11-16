import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:easy_tour/Screens/navigationScreen.dart';
import 'package:easy_tour/Screens/bookMark.dart';
import 'package:easy_tour/Screens/currencyTransaction.dart';
import 'package:easy_tour/Screens/timeConverter.dart';
import 'package:easy_tour/Screens/language.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
         appBar: customAppBar(),
//      appBar: AppBar(title: Text("$apptitle", style: TextStyle(fontWeight: FontWeight.bold),),
//      backgroundColor: Colors.blue,
//      ),
        bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.navigation, size: 30),
            Icon(Icons.book, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.language, size: 30),
            Icon(Icons.access_time, size: 30),
          ],

          color: Colors.lightBlue,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOutCirc,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: bodyofPages(_page));
  }

  Widget bodyofPages(int pageNo){
    switch (pageNo) {
      case 0:
        return navigationScreen();
        break;
      case 1:
        return bookMark();
        break;
      case 2:
        return currencyTransaction();
        break;
      case 3:
        return language();
        break;
      case 4:
        return timeConverter();
    }
       


  }

 Widget customAppBar() {
   String apptitle;
   switch (_page) {
     case 0:
       apptitle = "Tourism Site Navigator";
       return null;
       break;
     case 1:
       apptitle = "Booking";
       return AppBar(title: Text("$apptitle", style: TextStyle(fontWeight: FontWeight.bold),),
         backgroundColor: Colors.blue,
       );
       break;
     case 2:
       apptitle = "Currency Converter";
       return AppBar(title: Text("$apptitle", style: TextStyle(fontWeight: FontWeight.bold),),
         backgroundColor: Colors.blue,
       );
       break;
     case 3:
       apptitle = "Local Language Converter";
       return AppBar(title: Text("$apptitle", style: TextStyle(fontWeight: FontWeight.bold),),
         backgroundColor: Colors.blue,
       );
       break;
     case 4:
       apptitle ="World Clock Time Converter";
       return AppBar(title: Text("$apptitle", style: TextStyle(fontWeight: FontWeight.bold),),
         backgroundColor: Colors.blue,
       );
   }
  }
}