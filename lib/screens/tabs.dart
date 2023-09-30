import 'package:flutter/material.dart';
import '../main.dart';
import '../screens/home_screen.dart';
import '../screens/contact_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _sectetedPageIndex = 0;

  void _selectedPage(int index) {
    setState(() {
      _sectetedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomeScreen();
    var activePageTitle = 'HOME SCREEN';

    if (_sectetedPageIndex == 1) {
      activePage = const ContactScreen();
      // Navigator.pop(context);
      activePageTitle = 'CONTACT SCREEN';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
        backgroundColor: myCustomColor,
        centerTitle: true,
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          onTap: _selectedPage,
          currentIndex: _sectetedPageIndex,
          selectedIconTheme: const IconThemeData(
              color: Colors.white), // Icon color when selected
          unselectedIconTheme: const IconThemeData(
              color: Colors.grey), // Icon color when not selected
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const Icon(
                  Icons.home,
                  size: 40,
                ),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const Icon(
                  Icons.call,
                  size: 40,
                ),
                label: ''),
          ]),
    );
  }
}
