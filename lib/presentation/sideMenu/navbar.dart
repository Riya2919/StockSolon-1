import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';
import 'package:main_app/presentation/ground_screen/ground_screen.dart';
import 'package:main_app/presentation/news/services/news.dart';
import 'package:main_app/presentation/rewards_screen/rewards_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text(
            'John Doe',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          accountEmail: Text('johndoe@gmail.com',
              style: TextStyle(
                color: Colors.white,
              )),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(child: Image.asset('assets/images/Backgrd.jpg')),
          ),
          decoration: BoxDecoration(
            color: Color(0xFF092635),
            image: DecorationImage(
                image: AssetImage('assets/images/ProfileImg.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        ListTile(
          leading: GestureDetector(
            onTap: () {
              // Handle the onTap action for the Icon here
              // You can navigate to another screen, show a dialog, or perform any action
              print('Icon tapped!');
            },
            child: Icon(Icons.person),
          ),
          title: Text('Account'),
          subtitle: Text('Personal'),
          onTap: () {
            // Handle the onTap action for the entire ListTile here
            Get.toNamed(AppRoutes.iphone1314NineScreen);
          },
        ),
        ListTile(
          leading: GestureDetector(
            onTap: () {
              // Handle the onTap action for the Icon here
              // You can navigate to another screen, show a dialog, or perform any action
              print('Icon tapped!');
            },
            child: Icon(Icons.currency_bitcoin),
          ),
          title: Text('Stocks Page'),
          subtitle: Text('Stocks'),
          onTap: () {
            // Handle the onTap action for the entire ListTile here
            Get.toNamed(AppRoutes.stockTabContainerScreen);
          },
        ),
        ListTile(
          leading: GestureDetector(
            onTap: () {
              // Handle the onTap action for the Icon here
              // You can navigate to another screen, show a dialog, or perform any action
              print('Icon tapped!');
            },
            child: Icon(Icons.gamepad_outlined),
          ),
          title: Text('Gameification'),
          subtitle: Text('Gamification'),
          onTap: () {
            // Handle the onTap action for the entire ListTile here
            Get.toNamed(AppRoutes.groundScreen);
          },
        ),
        ListTile(
          leading: GestureDetector(
            onTap: () {
              // Handle the onTap action for the Icon here
              // You can navigate to another screen, show a dialog, or perform any action
            },
            child: Icon(Icons.newspaper_outlined),
          ),
          title: Text('News Update'),
          subtitle: Text('News'),
          onTap: () {
            // Handle the onTap action for the entire ListTile here
            Get.toNamed(AppRoutes.newsScreen);
          },
        ),
        ListTile(
            leading: GestureDetector(
              onTap: () {
                // Handle the onTap action for the Icon here
                // You can navigate to another screen, show a dialog, or perform any action
                print('Icon tapped!');
              },
              child: Icon(Icons.settings),
            ),
            title: Text('My Settings'),
            subtitle: Text('Settings'),
            onTap: () {
              // Handle the onTap action for the entire ListTile here
              Get.toNamed(AppRoutes.appNavigationScreen);
            }),
        ListTile(
          leading: GestureDetector(
            onTap: () {
              // Handle the onTap action for the Icon here
              // You can navigate to another screen, show a dialog, or perform any action
              print('Icon tapped!');
            },
            child: Icon(Icons.person),
          ),
          title: Text('Logout'),
          subtitle: Text('Logout'),
          onTap: () {
            // Handle the onTap action for the entire ListTile here
            Get.toNamed(AppRoutes.iphone14FourteenScreen);
          },
        ),
      ],
    ));
  }
}
