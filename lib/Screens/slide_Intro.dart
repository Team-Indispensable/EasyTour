import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:easy_tour/Screens/Home.dart';

class slide_Intro extends StatefulWidget {
  @override
  _slide_IntroState createState() => _slide_IntroState();
}

class _slide_IntroState extends State<slide_Intro> {
  final pages = [
    PageViewModel(
        pageColor:  Colors.black,
        iconImageAssetPath: 'lib/Assets/air-hostess.png',
        bubble: Image.asset('lib/Assets/Hotel-view.jpg'),
        body: Text(
          'This feature is all about viewing, selecting and rating nearby hotels'
              ,
        ),
        title: Text(
          'Booking',
        ),

        titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize:30.0, ),
        bodyTextStyle: TextStyle(color: Colors.white,fontSize: 20.0),
        mainImage: Image.asset(
          'lib/Assets/Hotel-view.jpg',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,

          alignment: Alignment.center,
        )),

    PageViewModel(
        pageColor:  Colors.black45,
        iconImageAssetPath: 'lib/Assets/taxi-driver.png',
        bubble: Image.asset('lib/Assets/taxi-driver.png'),
        body: Text(
          'Explore tourism destinations in Ethiopia with adequate description and image gallery and rating',
        ),
        title: Text(
          'Tourism Site Navigator',
        ),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(color: Colors.white,fontSize: 20.0),
        mainImage: Image.asset(
          'lib/Assets/Map2.jpg',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
          alignment: Alignment.center,
        )),

    PageViewModel(
        pageColor:  Colors.black54,
        iconImageAssetPath: 'lib/Assets/time.jpg',
        bubble: Image.asset('lib/Assets/time.jpg'),
        body: Text(
          'Major currency converter to birr including Feature to change time zone',
        ),
        title: Text(
          'Currency Converter',
        ),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(color: Colors.white,fontSize: 20.0),
        mainImage: Image.asset(
          'lib/Assets/money.jpg',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
          alignment: Alignment.center,
        )),



  ];

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => IntroViewsFlutter(
        pages,
        showNextButton: true,
        showBackButton: true,
        onTapSkipButton: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ), //MaterialPageRoute
          );
        },
        onTapDoneButton: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ), //MaterialPageRoute
          );
        },
        pageButtonTextStyles: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ), //IntroViewsFlutter
    );
  }
}
