import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:carousel_slider/carousel_slider.dart';

class navigationScreen extends StatefulWidget {
  @override
  _navigationScreenState createState() => _navigationScreenState();
}

class _navigationScreenState extends State<navigationScreen> {
  List imaList = [
    'https://images.unsplash.com/photo-1516533075015-a3838414c3ca?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',
    'https://images.unsplash.com/photo-1588349243120-7e7efa500bc4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1483671174579-bab2a5293389?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1512654458600-cf5387bd9428?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1572888195250-3037a59d3578?ixlib=rb-1.2.1&auto=format&fit=crop&w=776&q=80',
    'https://images.unsplash.com/flagged/photo-1572644973628-e9be84915d59?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: ClipPath(
            clipper: WaveClipperOne(),
            child: Stack(
              children: [
                Image(image: AssetImage('lib/Assets/nature.jpg')),
                Column(
                  children: [
                    SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      "Explore",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Text(
                      "Beautiful places",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "with EasyTour",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          " Places",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
              fontFamily: 'Bitter'),
        ),
        Text(
          "  you would love",
          style: TextStyle(fontSize: 15.0, fontFamily: 'Bitter'),
        ),
        SizedBox(
          height: 20.0,
        ),
        CarouselSlider(
            items: imaList.map((imgurl) {
              return Builder(builder: (BuildContext context) {
                return Container(
                    height: 380.0,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(5, 5),
                              blurRadius: 2.0,
                              spreadRadius: 2.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      children: [
                        Image.network(
                          imgurl,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          " Ertale",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              fontFamily: 'Bitter'),
                        ),
                        Text(
                          " lorem fcfjb dhfbcdc hkndfbch hdxnfbch hdnfbch hnfbch\n cdhfbc hsdbfckhs jhhb fchnvba hfbvckhb\n sajchgbasfvajhnbfvshbnv\nhfbvisbvksngcvbhsdkcnbv\n kjfhvbsfkcvbksfcnbvskchvb kbcvkhs cnbv shnvcb khs",
                          style:
                              TextStyle(fontSize: 10.0, fontFamily: 'Bitter'),
                        )
                      ],
                    ));
              });
            }).toList(),
            options: CarouselOptions(
                height: 400.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                aspectRatio: 16 / 9,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 10))),
        SizedBox(
          height: 20.0,
        ),
        Text(
          " Experiences",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
              fontFamily: 'Bitter'),
        ),
        Text(
          "   you need",
          style: TextStyle(fontSize: 15.0, fontFamily: 'Bitter'),
        ),
        SizedBox(
          height: 20.0,
        ),
        CarouselSlider(
            items: imaList.map((imgurl) {
              return Builder(builder: (BuildContext context) {
                return Container(

                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(5, 5),
                              blurRadius: 2.0,
                              spreadRadius: 2.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Image.network(
                          imgurl,
                          fit: BoxFit.fill,
                        ),
                        Text(

                          "See more",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Bitter',
                              color: Colors.lightBlueAccent),
                        textAlign: TextAlign.end,)
                      ],
                    ));
              });
            }).toList(),
            options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                aspectRatio: 16 / 9,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 10))),
      ],
    );
  }
}
