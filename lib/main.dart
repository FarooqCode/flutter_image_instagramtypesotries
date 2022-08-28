import 'package:flutter/material.dart';
import 'package:stories_for_flutter/stories_for_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NetworkImgStories(),
    );
  }
}

class ImagesAssets extends StatelessWidget {
  const ImagesAssets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const urlImg1 = 'assets/images/image_1.jpg';
    const urlImg2 = 'assets/images/image_2.jpg';
    const urlImg3 = 'assets/images/image_3.jpg';

    return Scaffold(
      body: Center(
        child: Column(children: [
          Image.asset(
            urlImg1,
            width: 300,
            height: 200,
            fit: BoxFit.cover,
          ),
          Image.asset(
            urlImg2,
            width: 300,
            height: 300,
            fit: BoxFit.contain,
          ),
          CircleAvatar(
            backgroundImage: AssetImage(urlImg3),
            radius: 120,
          )
        ]),
      ),
    );
  }
}

class NetworkImgStories extends StatefulWidget {
  NetworkImgStories({Key? key}) : super(key: key);

  @override
  State<NetworkImgStories> createState() => _NetworkImgStoriesState();
}

class _NetworkImgStoriesState extends State<NetworkImgStories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:   Column(
          children: [
            Stories(
              circlePadding: 2,
              storyItemList: [
                StoryItem(
                    name: "First Story",
                    thumbnail: const NetworkImage(
                      "https://assets.materialup.com/uploads/82eae29e-33b7-4ff7-be10-df432402b2b6/preview",
                    ),
                    stories: [
                      Scaffold(
                        body: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://wallpaperaccess.com/full/16568.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Scaffold(
                        body: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://i.pinimg.com/originals/2e/c6/b5/2ec6b5e14fe0cba0cb0aa5d2caeeccc6.jpg",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                StoryItem(
                  name: "2nd",
                  thumbnail: const NetworkImage(
                    "https://www.shareicon.net/data/512x512/2017/03/29/881758_cup_512x512.png",
                  ),
                  stories: [
                    Scaffold(
                      body: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://i.pinimg.com/originals/31/bc/a9/31bca95ba39157a6cbf53cdf09dda672.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Scaffold(
                      backgroundColor: Colors.black,
                      body: Center(
                        child: Text(
                          "That's it, Folks !",
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}