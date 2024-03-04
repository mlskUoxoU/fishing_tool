import 'dart:ui';

import 'package:flutter/material.dart';

import 'db/db.dart';
import 'db/db_helper.dart';


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

  List<DataCell> fishes = [];

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
        body: ScrollConfiguration(
            behavior: CustomScrollBehavior(),
            
            // 縦横スクロール
            child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
            scrollDirection: Axis.vertical,

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
                ],
                rows: [
                  for (var i = 0; i < 20; i++)
                    DataRow(
                      cells: [
                        DataCell(Text('${200 - i}')),
                        DataCell(Text('リュウグウノツカイ')),
                        DataCell(Text(i.isOdd ? '男' : '女')),
                        DataCell(Text(i.isEven ? '男' : '女')),
                      
                      ],
                    ),
                  
                ]
              )
            )
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