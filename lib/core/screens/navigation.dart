import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:insta_app/core/screens/add_post.dart';
import 'package:insta_app/core/screens/favourites.dart';
import 'package:insta_app/core/screens/profile.dart';
import 'package:insta_app/core/screens/home.dart';
import 'package:insta_app/core/screens/search.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  @override
  Widget build(BuildContext context) {
    int currentPage = 0;
    final PageController pageController = PageController();
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: widthScreen > 600
          ? null
          : AppBar(
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.messenger_outline,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.logout,
                    )),
              ],
              title: SvgPicture.asset(
                "assets/imgs/instagram.svg",
                // ignore: deprecated_member_use
                color: Colors.white,
                height: 35,
              ),
            ),
      bottomNavigationBar: CupertinoTabBar(
          onTap: (index) {
            pageController.jumpToPage(index);
            setState(() {
              currentPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: currentPage == 0 ? Colors.white : Colors.black,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: currentPage == 1 ? Colors.white : Colors.black,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle,
                  color: currentPage == 2 ? Colors.white : Colors.black,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: currentPage == 3 ? Colors.white : Colors.black,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: currentPage == 4 ? Colors.white : Colors.black,
                ),
                label: ""),
          ]),
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
        physics: const ScrollPhysics(),
        controller: pageController,
        children: const [
          HomeScreen(),
          SearchScreen(),
          AddPostScreen(),
          FavouritesScreen(),
          FriendsScreen(),
        ],
      ),
    );
  }
}
