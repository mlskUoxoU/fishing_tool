import 'dart:ui';

import 'package:flutter/material.dart';


class KingSizeTable extends StatefulWidget{
  const KingSizeTable({Key? key}) : super(key: key);

  @override
  State<KingSizeTable> createState() => _KingSizeTable();
}

class _KingSizeTable extends State<KingSizeTable>{

  // void _onItemTapped(int index){
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('👑'),
          actions: [
            IconButton(onPressed: (){},
                      icon: Icon(Icons.abc))
          ],
        ),
        body: SingleChildScrollView(
          child: DataTable(
            columns: const [
              DataColumn(
                label: Text('No'),
                
              ),
              DataColumn(
                label: Text('🐟リスト'),
                
              ),
              DataColumn(
                label: Text('👑'),
                
              ),
              DataColumn(
                label: Text('メモ'),
                
              ),
              DataColumn(
                label: Text('メモ'),
                
              ),
            ],
            rows: [
              for (var i = 0; i < 20; i++)
                DataRow(
                  cells: [
                    DataCell(Text('${20 - i}郎')),
                    DataCell(Text('$i')),
                    DataCell(Text(i.isOdd ? '男' : '女')),
                    DataCell(Text(i.isOdd ? '男' : '女')),
                    
                    DataCell(Text(i.isOdd ? '男' : '女')),
                  ],
                ),
              
            ]
          )
        )
      )
    );
  }
  
}

class CustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}