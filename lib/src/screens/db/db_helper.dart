import 'package:cloud_firestore/cloud_firestore.dart';

import 'db.dart';

class DBHelper {
  // DBHelperをinstance化する
  static final DBHelper instance = DBHelper._createInstance();

  DBHelper._createInstance();

  // fishesテーブルのデータを全件取得する
  selectAllFishes(String userId) async {
    final db = FirebaseFirestore.instance;
  //↓fishesコレクションにあるdocを全て取得する
  //　この時、fromFirestore、toFirestoreを使ってデータ変換する
    final snapshot =
        db.collection("users").doc(userId).collection("fishes").withConverter(
              fromFirestore: Fishes.fromFirestore,
              toFirestore: (Fishes fishes, _) => fishes.toFirestore(),
            );
    final fishes = await snapshot.get();
    return fishes.docs;
  }

// nameをキーにして1件のデータを読み込む
// ※fishesのキーはidでなくnameに変更している←してない
  fishData(String userId, int id) async {  
    final db = FirebaseFirestore.instance;
    final docRef = db
        .collection("users")
        .doc(userId)
        .collection("fishes")
        .doc("$id")
        .withConverter(
          fromFirestore: Fishes.fromFirestore,
          toFirestore: (Fishes fishes, _) => fishes.toFirestore(),
        );
    final fishdata = await docRef.get();
    final fish = fishdata.data();
    return fish;
  }

// データをinsertする
// ※updateも同じ処理で行うことができるので、共用している
  Future insert(Fishes fishes, String userId) async {  
    final db = FirebaseFirestore.instance;
    final docRef = db
        .collection("users")
        .doc(userId)
        .collection("fishes")
        .doc(fishes.id as String)
        .withConverter(
          fromFirestore: Fishes.fromFirestore,
          toFirestore: (Fishes fishes, options) => fishes.toFirestore(),
        );
    await docRef.set(fishes);
  }

// データを削除する
  Future delete(String userId, String name) {
    final db = FirebaseFirestore.instance;
    return db
        .collection("users")
        .doc(userId)
        .collection("fishes")
        .doc(name)
        .delete();
  }
}