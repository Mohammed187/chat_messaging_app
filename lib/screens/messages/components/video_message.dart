import 'package:flutter/material.dart';

import '../../../constants.dart';

class VideoMessage extends StatelessWidget {
  const VideoMessage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AspectRatio(
            aspectRatio: 1.6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/images/Video Place Here.png'),
            ),
          ),
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow,
              size: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
