import 'package:aplikasigojek/chat_page.dart';
import 'package:aplikasigojek/home_page.dart';
import 'package:aplikasigojek/order_page.dart';
import 'package:aplikasigojek/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(GojekCloneApp());
}

class GojekCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek Clone',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // List of screens for each tab
  final List<Widget> _pages = [
    HomePage(), 
    OrderPage(),
    ChatPage(),
    ProfilePage(),
  ];

  // Handler for tab selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gojek Clone'),
      ),
      body: _pages[_selectedIndex], // This will display the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_taxi),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,   // Selected color
        unselectedItemColor: Colors.grey,  // Unselected color
        onTap: _onItemTapped,
      ),
    );
  }
}
