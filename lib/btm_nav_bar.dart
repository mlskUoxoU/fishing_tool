import 'package:flutter/material.dart';

class BtmNavBar extends StatefulWidget{
  const BtmNavBar({Key? key}) : super(key: key);

  @override
  State<BtmNavBar> createState() => _BtmNavBar();
}

class _BtmNavBar extends State<BtmNavBar>{
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('bottom navigation bar'),
      ),
      body: Center(
        child: Text('indexNum: $_selectedIndex',
                    style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'King',
            tooltip: 'キングサイズ',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Fishing Pond',
            tooltip: '釣り堀',
            backgroundColor: Colors.blue,
          ), 
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Information',
            tooltip: '情報',
            backgroundColor: Colors.blue,
          ),        
        ]
      )
    );
  }
  
}