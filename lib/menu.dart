import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ott/botnavi.dart';
import 'package:ott/login.dart';

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Text("  OTT Watch",style: TextStyle(color: Colors.orange,fontSize: 30,fontWeight: FontWeight.bold,),),
        leadingWidth: 200,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const navi()));
                  },
                  child: Icon(Icons.clear,size: 35)),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.baseline,
                //textBaseline: TextBaseline.alphabetic,
                children: [
                  SizedBox(width: 20),
                  Container(
                    child: Icon(Icons.favorite,size: 30,color: Colors.white,),),
                  SizedBox(width: 10),
                  Text("Favourite",style: TextStyle(color: Colors.white,fontSize: 25),),
                ],
              ),
              Divider(
                 height: 30,
                 thickness: 2,
                 indent: 10,
                 endIndent: 10,
                color: Colors.white,
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    child: Icon(Icons.sort_by_alpha,size: 30,color: Colors.white,),
                  ),
                  SizedBox(width: 10),
                  Text("Language",style: TextStyle(color: Colors.white,fontSize: 25),),
                ],
              ),
              Divider(
                height: 30,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.white,
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    child: Icon(Icons.live_help_sharp,size: 30,color: Colors.white,),
                  ),
                  SizedBox(width: 10),
                  Text("Help",style: TextStyle(color: Colors.white,fontSize: 25),),
                ],
              ),
              Divider(
                height: 30,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.white,
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    child: Icon(Icons.feedback_sharp,size: 30,color: Colors.white,),
                  ),
                  SizedBox(width: 10),
                  Text("Feedback",style: TextStyle(color: Colors.white,fontSize: 25),),
                ],
              ),
              Divider(
                height: 30,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.white,
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    child: Icon(Icons.star,size: 30,color: Colors.white,),
                  ),
                  SizedBox(width: 10),
                  Text("Rate the App",style: TextStyle(color: Colors.white,fontSize: 25),),
                ],
              ),
              Divider(
                height: 30,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.white,
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    child: Icon(Icons.link_rounded,size: 30,color: Colors.white,),
                  ),
                  SizedBox(width: 10),
                  Text("Privacy policy",style: TextStyle(color: Colors.white,fontSize: 25),),
                ],
              ),
              Divider(
                height: 30,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.white,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const login()),);
                },
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      child: Icon(Icons.login_sharp,size: 30,color: Colors.white,),
                    ),
                    SizedBox(width: 10),
                    Text("Login",style: TextStyle(color: Colors.white,fontSize: 25),),
                  ],
                ),
              ),
              Divider(
                height: 30,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.white,
              ),
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
            ],
          ),
        ],
      ),
    );
  }
}
