import 'package:flutter/material.dart';
import './support_screen.dart';
import './orders_screen.dart';
import './home_screen.dart';
class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final  _pages= <Map<String, dynamic>>[
    {'page':HomeScreen(),
      'title': 'Welcome Duncan',},
    {'page':OrdersScreen(),
      'title': 'Orders',},
    {'page':SupportScreen(),
      'title': 'Customer Support'},
  ];
  int _selectedPageIndex = 0;
  void _selectPage(int index){
    setState(() {
      _selectedPageIndex =index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedPageIndex ==0 ? null :AppBar(
        title:  Align(
          alignment: Alignment.center,
          child: Text(
            _pages [_selectedPageIndex]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
        ),
        backgroundColor: const Color(0xFF039678),

      ),
      body: _pages [_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF039678),
        currentIndex: _selectedPageIndex,

        items: [
          BottomNavigationBarItem(

            icon: Icon(Icons.home),label:'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_sharp),label:'Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.support_agent_sharp),label:'Support'),

        ],

      )
    );
  }
}
