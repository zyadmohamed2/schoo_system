import 'package:flutter/material.dart';
import 'package:schoolapp/Features/Home/presentation/views/home_view.dart';
import 'package:schoolapp/Features/blog/presentation/views/blog.dart';
import 'package:schoolapp/Features/chat/presentation/views/ChatPage/chatpage.dart';

import 'package:schoolapp/Features/profile/presentation/views/profilepage.dart';
import 'package:schoolapp/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schoolapp/core/utils/assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> page = [
    const HomeView(),
    const ChatPage(),
    const BlogPage(),
    const ProfilePage(),
  ];
  int selectedIndex = 0;
  onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Map<String, dynamic> items = {
    "Home": AssetsData.homeIcon,
    "Chat": AssetsData.chatIcon,
    "Blog": AssetsData.blogIcon,
    "Profile": AssetsData.personIcon,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          selectedItemColor: kPrimaryColor,
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            ...List.generate(
              page.length,
              (index) {
                return BottomNavigationBarItem(
                    icon: SvgPicture.asset(items.values.elementAt(index),
                        color: index == selectedIndex
                            ? kPrimaryColor
                            : Colors.grey),
                    label: items.keys.elementAt(index));
              },
            )
          ]),
      body: page[selectedIndex],
    );
  }
}
