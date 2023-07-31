import 'package:flutter/material.dart';
import 'carcall.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class stream extends StatefulWidget {
  const stream({Key? key}) : super(key: key);

  @override
  State<stream> createState() => _streamState();
}

class _streamState extends State<stream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                Container(
                  height: 30,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Text("  Browse by platform",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                Container(
                  height: 180,
                    color: Colors.black,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lis5.length,
                    itemBuilder: (BuildContext context,int itemIndex) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          shape: BeveledRectangleBorder(
                            side: BorderSide(
                              color: Colors.grey.shade800,
                              width: 4,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 50,
                          child: Container(
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(lis5[itemIndex].image5),
                                fit: BoxFit.fill,
                              ),
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
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: TextFormField(
              style: TextStyle(fontSize: 30,color: Colors.orange),
              decoration: InputDecoration(
                hintText: "   Search your favourite item",
                hintStyle: TextStyle(color: Colors.grey,fontSize: 22),
                prefixIcon:Icon(Icons.wifi,size: 40,color: Colors.amberAccent),
                suffixIcon: Icon(Icons.search,size: 40,color: Colors.amberAccent),
              ),
            ),
          ),
          Divider(
            height: 20,
            thickness: 3,
            color: Colors.orangeAccent,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 230,
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
                    padding: const EdgeInsets.only(left: 10),
                    child: RichText(text: TextSpan(
                      text: "Play at rummy circle to win amazing awards",style: TextStyle(fontSize: 17,color: Colors.black),
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
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
                  SizedBox(height: 20),
                  Center(
                    child: Container(
                      height: 40,
                      width: 300,
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
            padding: const EdgeInsets.all(6.0),
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
                  height: 160,
                  color: Colors.black,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lis5.length,
                    itemBuilder: (BuildContext context,int itemIndex) {
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          elevation: 50,
                          child: Container(
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(lis5[itemIndex].image5),
                                fit: BoxFit.fill,
                              ),
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
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(child: Text("Get Personalized recommendation",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),
            ),
          ),
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
                      SizedBox(width: 30),
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
                      SizedBox(width: 10),
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
                  child: Text("  Popular TV Series",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                Container(
                  height: 160,
                  color: Colors.black,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lis5.length,
                    itemBuilder: (BuildContext context,int itemIndex) {
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          elevation: 50,
                          child: Container(
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(lis5[itemIndex].image5),
                                fit: BoxFit.fill,
                              ),
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
                  child: Text("  Popular on Netflix",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                Container(
                  height: 160,
                  color: Colors.black,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lis5.length,
                    itemBuilder: (BuildContext context,int itemIndex) {
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          elevation: 50,
                          child: Container(
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(lis5[itemIndex].image5),
                                fit: BoxFit.fill,
                              ),
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
        ],
      ),
    );
  }
}
