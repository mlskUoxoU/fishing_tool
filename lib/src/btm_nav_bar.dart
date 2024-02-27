import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'screens/kingsize.dart';
import 'screens/fishing_pond.dart';
import 'screens/information.dart';
import 'screens/setting.dart';


class BtmNavBar extends StatefulWidget{
  const BtmNavBar({Key? key}) : super(key: key);

  @override
  State<BtmNavBar> createState() => _BtmNavBar();
}

class _BtmNavBar extends State<BtmNavBar>{

  // page遷移
  static const _screens = [
    KingSizeTable(),
    FishingPond(),
    Information(),
    Setting(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('bottom navigation bar'),
      // ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.crown),
            activeIcon: Icon(FontAwesomeIcons.crown,
                            color: Colors.amber,),
            label: 'King',
            tooltip: 'キングサイズ',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phishing_outlined,
                      size: 30),
            activeIcon: Icon(Icons.phishing_outlined,
                            size: 30,
                            // color: Color.fromARGB(255, 76, 65, 231)
                            ),
            label: 'Fishing Pond',
            tooltip: '釣り堀',
            backgroundColor: Colors.blue,
          ), 
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            activeIcon: Icon(Icons.book,
                            // color: Color.fromARGB(255, 102, 52, 28)
                            ),
            label: 'Information',
            tooltip: '情報',
            backgroundColor: Colors.blue,
          ), 
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings_outlined,
                            // color: Color.fromARGB(255, 102, 52, 28)
                            ),
            label: 'Setting',
            tooltip: '設定',
            backgroundColor: Colors.blue,
          ),          
        ],

        backgroundColor: Color.fromARGB(255, 8, 8, 129),
        unselectedItemColor: Color.fromARGB(255, 131, 129, 129),
      ),
    );
  }
  
}