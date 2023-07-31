import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ott/botnavi.dart';
import 'package:ott/two.dart';
import 'carcall.dart';
import 'package:dots_indicator/dots_indicator.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();

}

class _loginState extends State<login> {

  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:10),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 600,
                      aspectRatio: 16/9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 10,
                      // onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                    itemCount: lis2.length,
                    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                          height: 400,
                          width: 500,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            image: DecorationImage(
                                image: AssetImage(lis2[itemIndex].image2),
                                fit: BoxFit.fill
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(lis2[itemIndex].text2,style: TextStyle(fontSize: 30,color: Colors.white),),
                          ),
                        ),
                  ),
                ),
                Positioned(
                  left: 160,
                  bottom: 20,
                  child: DotsIndicator(
                    dotsCount: lis2.length,
                    position: currentIndex.toInt(),
                    decorator: DotsDecorator(
                      color: Colors.orange,
                      activeColor: Colors.orange,
                      size: Size.square(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text("Connect With",style: TextStyle(color: Colors.white,fontSize: 25),),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 330,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(width: 40),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.mail,size: 30,color: Colors.orange),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Login with Gmail",style: TextStyle(color: Colors.orange,fontSize: 20),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const navi()));
                },
                child: Text("Maybe Later",style: TextStyle(fontSize: 25,color: Colors.white54),))
          ],
        ),
      ),
    );
  }
  }


