import 'package:flutter/material.dart';
import 'package:tradly/home_screens/order_history.dart';
import 'package:tradly/home_screens/profile.dart';
import 'package:tradly/store/my_store.dart';
import 'package:tradly/themes/themes.dart';

import 'home_screens/browse.dart';
import 'home_screens/home_dashboard.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeDashboard(),
    const Browse(),
    const MyStore(),
    const OrderHistory(),
    const Profile(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: CustomColors.primaryColor,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        // unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.store,
            ),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.work_history_outlined,
            ),
            label: 'Order History',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}
