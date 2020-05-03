import 'package:FlutterGalleryApp/screens/photo_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FullScreenImage(name: 'ksenia', userName: 'bla@bla'),
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Center(
//          child: Text(
//            'Photo',
//            style: TextStyle(color: AppColors.black),
//          ),
//        ),
//        backgroundColor: AppColors.white,
//        leading: IconButton(icon: Icon(Icons.arrow_back_ios)),
//      ),
//      body: Column(
//        children: <Widget>[
//          Photo(photoLink: link, key: Key('Photo')),
//          Padding(
//            padding: EdgeInsets.only(left: 10, bottom: 10, right: 10),
//            child: Text(
//              FullScreenImage(altDescription: description).altDescription,
//              overflow: TextOverflow.ellipsis,
//              maxLines: 3,
//              style: AppStyles.h3,
//            ),
//          ),
//          Row(
//            children: <Widget>[
//              UserAvatar(imageLink: link),
//              FullScreenImage(name: 'obeziana', userName: '@dog.ua'),
//            ],
//          ),
//          Row(
//            mainAxisSize: MainAxisSize.max,
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children: [
//              Padding(
//                padding: EdgeInsets.all(15),
//                child: LikeButton(likeCount: 23, isLiked: true),
//              ),
//              Expanded(
//                child: GestureDetector(
//                  child: Container(
//                    padding: EdgeInsets.all(10.0),
//                    margin: EdgeInsets.all(10.0),
//                    decoration: BoxDecoration(
//                      color: AppColors.dodgerBlue,
//                      borderRadius: BorderRadius.circular(18.0),
//                    ),
//                    child: Text(
//                      'Save',
//                      textAlign: TextAlign.center,
//                      style: TextStyle(fontSize: 14, color: AppColors.white),
//                    ),
//                  ),
//                  onTap: someMethod,
//                ),
//              ),
//              Expanded(
//                child: GestureDetector(
//                  child: Container(
//                    padding: EdgeInsets.all(10.0),
//                    margin: EdgeInsets.all(10.0),
//                    decoration: BoxDecoration(
//                      color: AppColors.dodgerBlue,
//                      borderRadius: BorderRadius.circular(18.0),
//                    ),
//                    child: Text(
//                      'Visit',
//                      textAlign: TextAlign.center,
//                      style: TextStyle(fontSize: 14, color: AppColors.white),
//                    ),
//                  ),
//                  onTap: someMethod,
//                ),
//              ),
//            ],
//          ),
//        ],
//      ),
//    );
//  }

//}
