import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class feed extends StatefulWidget {
  const feed({Key? key}) : super(key: key);

  @override
  State<feed> createState() => _feedState();
}
late int currentIndex=0;
class _feedState extends State<feed> {

  late FlickManager flickManager;


  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
      VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.location_on,color: Colors.blue,size: 30),
          ),
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Icon(Icons.ondemand_video_outlined,size: 40,color: Colors.green,),
                ),
              ),
              SizedBox(width: 10),
              Text("Videos You May Like",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 500,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (BuildContext context,int itemIndex) {
                      return
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 50,
                             shape: BeveledRectangleBorder(
                               borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                             ),
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Container(
                                height: 300,
                                width: 280,
                                child: FlickVideoPlayer(
                                    flickManager: flickManager,
                                ),
                      ),
                                SizedBox(height: 20),
                                Text(" Watch Bees Making Their Hives \n And Building Their Colony.\n\n Tamil Cricket Trending Page.",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                              ],
                            ),
                          ),
                        );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  image: DecorationImage(
                                    image: AssetImage("assets/Pi-rated-1.png"),
                                  )
                                ),
                              ),
                            ),
                            Text("  Economics daily\n  Breaking news",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                             SizedBox(width: 20),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text("Follow",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),
                              ),
                            ),
                            Icon(Icons.more_vert,size: 30),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text("  Cyclone Biparjoy \n  Live Updates \n  Etremely severe \n  cyclonic storm \n  'Biparjoy' to \n  hit Gujarat on June 15 \n  with a windspeed of \n  135 kmph,predicts\n  IMD",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                             SizedBox(width: 20),
                            Container(
                              height: 230,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage("assets/ravita.jpg"),
                                  fit: BoxFit.fill,
                                )
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
          ),
        ],
      ),
    );
  }
}


