import 'package:flutter/material.dart';
import 'menu.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'carcall.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class mov extends StatefulWidget {
  const mov({Key? key}) : super(key: key);

  @override
  State<mov> createState() => _movState();
}

class _movState extends State<mov> {
  late int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage("assets/Pi-rated-1.png"),
              ),
            ),
          ),
        ),
        title: Text("OTT Watch",style: TextStyle(color: Colors.orange,fontSize:25,),),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/tri.png"),
                )
            ),
          ),
          SizedBox(width: 40),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const menu()));
                },
                child: Icon(Icons.menu_sharp,size: 30,)),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                style: TextStyle(fontSize: 30),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_sharp,color: Colors.amberAccent,size: 40,),
                    hintText: "   Type Movies, TV Shows",
                    hintStyle: TextStyle(fontSize: 25,color: Colors.yellow,)
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 280,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 250,
                      aspectRatio: 16/9,
                      viewportFraction: 1.35,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      //autoPlay: true,
                      //autoPlayInterval: Duration(seconds: 3),
                      //autoPlayAnimationDuration: Duration(milliseconds: 800),
                      //autoPlayCurve: Curves.fastOutSlowIn,
                      //enlargeCenterPage: true,
                      //enlargeFactor: 20,
                      // onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                    itemCount: lis3.length,
                    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                          height: 400,
                          width: 500,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            image: DecorationImage(
                                image: AssetImage(lis3[itemIndex].image3),
                                fit: BoxFit.fill
                            ),
                          ),
                        ),
                  ),
                ),
                Positioned(
                  left: 160,
                  bottom: 1,
                  child: DotsIndicator(
                    dotsCount: lis3.length,
                    position: currentIndex,
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
          ),
          SizedBox(height: 20),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: lis4.length,
                itemBuilder:(BuildContext context,int index){
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                            height: 60,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text(lis4[index].text4,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.normal),),),
                          ),
                );
              },
                ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 230,
              width: 350,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:34,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/ramy.jpeg"),
                        ),
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(text: TextSpan(
                      text: "Play at rummy circle to win amazing awards",style: TextStyle(fontSize: 17,color: Colors.black),
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RatingBar.builder(
                      initialRating: 3.5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15,
                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Build your netwok, connect with rummy players across the globe to challenge them.",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                      ),
                      child: Center(child: Text("Install",style: TextStyle(fontSize: 30,color: Colors.white),)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 30,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Text("  Popular Movies",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                Container(
                  height: 200,
                  color: Colors.black,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lis5.length,
                    itemBuilder: (BuildContext context,int itemIndex) {
                      return Card(
                        elevation: 50,
                        child: Container(
                          height: 100,
                          width: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(lis5[itemIndex].image5),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  SizedBox(width: 30),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/Pi-rated-1.png")
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 100,
                    width: 130,
                    child: Column(
                      children: [
                        Text("Tv Lens",style: TextStyle(color: Colors.white),),
                        Text("Find Movies and Tv shows recommendations personalized for you",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text("Follow",style: TextStyle(fontSize: 20,color: Colors.orange),)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 240,
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text("Enjoying OTT Watch ?",style: TextStyle(fontSize: 25,color: Colors.white),),
                  SizedBox(height: 10),
                  Text("We would love to hear from you!",style: TextStyle(color: Colors.white),),
                  SizedBox(height: 10),
                  Text("How is your experience using our app",style: TextStyle(color: Colors.white),),
                  SizedBox(height: 10),
                  RatingBar.builder(
                    initialRating: 2,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 30,
                    unratedColor: Colors.white70,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      SizedBox(width: 25),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text("Remind Me Later",style:TextStyle(color: Colors.white,fontSize: 20),)),
                        ),
                      ),
                      SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text("Rate Us",style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



