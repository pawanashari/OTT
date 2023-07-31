import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ott/menu.dart';
import 'carcall.dart';

class jai extends StatefulWidget {
  const jai({Key? key}) : super(key: key);

  @override
  State<jai> createState() => _jaiState();
}
class _jaiState extends State<jai> {
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
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white24,
                image: DecorationImage(
                  image: AssetImage("assets/bam01.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 250,
                width: 350,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height:60,
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
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: 500,
                aspectRatio: 16/9,
                viewportFraction: 1.0,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 20,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              itemCount: lis.length,
              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
                    height: 400,
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      image: DecorationImage(
                          image: AssetImage(lis[itemIndex].image),
                          fit: BoxFit.fill
                      ),
                    ),

                  ),
            ),
          ),
          SizedBox(height: 20),
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
                 SizedBox(width: 25),
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
            child: Column(
              children: [
                Container(
                  height: 30,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Text("  Must Watch Thanksgiving Shows & Movies",style: TextStyle(fontSize: 20,color: Colors.white),),
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
                          width: 120,
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
            child: Column(
              children: [
                Container(
                  height: 30,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Text("  Popular Gaming & Live Streaming",style: TextStyle(fontSize: 20,color: Colors.white),),
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
                          width: 120,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
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
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
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
