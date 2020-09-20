import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key key,
    @required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              SizedBox(
                width: 8,
              ),
              Expanded(
                  child: TextField(
                decoration:
                    InputDecoration.collapsed(hintText: '무슨 생각을 하고 계신가요?'),
              ))
            ],
          ),
          Divider(
            height: 10,
            thickness: 0.5,
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                    onPressed: () => print('라이브 방송'),
                    icon: Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: Text('라이브 방송')),
                VerticalDivider(width: 8,),
                FlatButton.icon(
                    onPressed: () => print('사진'),
                    icon: Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: Text('사진')),
                VerticalDivider(width: 8,),
                FlatButton.icon(
                    onPressed: () => print('영상 톡모임'),
                    icon: Icon(
                      Icons.video_call,
                      color: Colors.purpleAccent,
                    ),
                    label: Text('영상톡 모임')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
