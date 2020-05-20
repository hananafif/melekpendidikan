import 'package:melekpendidikan/consttants.dart';
import 'package:melekpendidikan/widgets/book_rating.dart';
import 'package:melekpendidikan/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class Lifestyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(80.0),),
            Icon(Icons.folder_open, size: 90.0,color: Colors.black.withOpacity(0.1),),
            Padding(padding: EdgeInsets.all(10.0),),
            Text("Belum Ada Buku", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.1)),)
          ],
        ),
      ),
    );
  }
}

