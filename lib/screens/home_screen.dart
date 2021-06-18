import 'package:clubhouse_ui_design/data.dart';
import 'package:clubhouse_ui_design/widgets/room_card.dart';
import 'package:clubhouse_ui_design/widgets/upcoming_rooms.dart';
import 'package:clubhouse_ui_design/widgets/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.search,
            size: 28.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.envelope_open,
              size: 26.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.calendar,
              size: 26.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.bell,
              size: 26.0,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
              child: UserProfileImage(
                imageUrl: currentUser.imageUrl,
                size: 36.0,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 120.0),
            children: [
              UpcomingRooms(upcomingRooms: upcomingRoomsList),
              const SizedBox(height: 12.0),
              ...roomsList.map((e) => RoomCard(room: e)),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                    Theme.of(context).scaffoldBackgroundColor,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60.0,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: const Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        CupertinoIcons.add,
                        size: 21.0,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: ' Start a room',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60.0,
            right: 40.0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.circle_grid_3x3_fill),
                ),
                Positioned(
                  right: 4.6,
                  bottom: 11.8,
                  child: Container(
                    height: 16.0,
                    width: 16.0,
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
