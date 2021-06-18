import 'package:clubhouse_ui_design/widgets/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomUserProfile extends StatelessWidget {
  final String imgUrl;
  final String name;
  final double size;
  final bool isNew;
  final bool isMuted;
  const RoomUserProfile({
    Key? key,
    required this.imgUrl,
    required this.name,
    this.size = 48.0,
    this.isNew = false,
    this.isMuted = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(6.0),
              child: UserProfileImage(
                imageUrl: imgUrl,
                size: size,
              ),
            ),
            if (isNew)
              Positioned(
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        ),
                      ]),
                  alignment: Alignment.center,
                  child: const Text(
                    '🍕',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                left: 0,
                bottom: 0,
              ),
            if (isMuted)
              Positioned(
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        ),
                      ]),
                  alignment: Alignment.center,
                  child: const Icon(CupertinoIcons.mic_slash_fill),
                ),
                right: 0,
                bottom: 0,
              )
          ],
        ),
        const SizedBox(height: 4.0),
        Flexible(
            child: Text(
          name,
          overflow: TextOverflow.ellipsis,
        )),
      ],
    );
  }
}
