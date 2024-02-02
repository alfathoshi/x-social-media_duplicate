import 'package:flutter/material.dart';
import '../pages/community.dart';
import '../pages/homepage.dart';
import '../pages/message.dart';
import '../pages/notification.dart';
import '../pages/trending.dart';

class Dashboard extends StatefulWidget {
  Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const TrendingPage(),
    const CommunityPage(),
    const NotificationPage(),
    const MessagePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(
              Icons.search,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Community',
            icon: Icon(
              Icons.people,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Notification',
            icon: Icon(
              Icons.notifications,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Message',
            icon: Icon(
              Icons.mail,
            ),
          ),
        ],
      ),
    );
  }
}
