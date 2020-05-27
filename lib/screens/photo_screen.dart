import 'package:FlutterGalleryApp/res/res.dart';
import 'package:FlutterGalleryApp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FullScreenImage extends StatefulWidget {

  final Animation<double> transitionAnimation;

  static const String link =
      'https://flutter-examples.com/wp-content/uploads/2019/09/blossom.jpg';
  static const String description =
      ' so it is a very big tree , without heart. So take my hand. '
      'and many many many textso it is a very big tree , without heart. So take my hand. and many many'
      ' many textso it is a very big tree , without heart. So take my hand. and many many many text ';

  final String name;
  final String userName;
  final String altDescription;
  final String photo;
  final String userPhoto;

  FullScreenImage(
      {this.name = "",
      this.userName = "",
      this.altDescription = "",
      this.photo = link,
      this.userPhoto = link,
      Key key, this.transitionAnimation})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FullScreenImage();
  }
}

class _FullScreenImage extends State<FullScreenImage>  with TickerProviderStateMixin {

AnimationController controller;
Animation<double> animation;

initState() {
  super.initState();
  controller = AnimationController(
      duration: const Duration(milliseconds: 1000), vsync: this);
  animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

  animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

  controller.forward();
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: <Widget>[
          Photo(photoLink: widget.photo, key: Key('Photo')),
          Padding(
            padding: EdgeInsets.only(left: 10, bottom: 10, right: 10),
            child: Text(
              widget.altDescription,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: AppStyles.h3,
            ),
          ),
            Container(
              child: FadeTransition(
                opacity: animation,
                child: _photo(),
              ),
            ),

          _buttons(),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Center(
        child: Text(
          'Photo',
          style: TextStyle(color: AppColors.black),
        ),
      ),
      backgroundColor: AppColors.white,
      leading: IconButton(
        icon: Icon(CupertinoIcons.back),
        onPressed: () {},
      ),
    );
  }

  Widget _photo() {
    return  Row(
      children: <Widget>[
        UserAvatar(widget.userPhoto),
        Column(
          children: <Widget>[
            Text(
              widget.name,
              style: AppStyles.h1Black,
            ),
            Text(
              '@${widget.userName}',
              style: AppStyles.h5Black,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buttons() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.all(15),
          child: LikeButton(likeCount: 23, isLiked: true),
        ),
        Expanded(
          child: GestureDetector(
            child: Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: AppColors.dodgerBlue,
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Text(
                'Save',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: AppColors.white),
              ),
            ),
            onTap: someMethod,
          ),
        ),
        Expanded(
          child: GestureDetector(
            child: Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: AppColors.dodgerBlue,
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Text(
                'Visit',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: AppColors.white),
              ),
            ),
            onTap: someMethod,
          ),
        ),
      ],
    );
  }

  void someMethod() {}
}
