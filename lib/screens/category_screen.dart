import 'package:melekpendidikan/consttants.dart';
import 'package:melekpendidikan/widgets/book_rating.dart';
import 'package:melekpendidikan/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

import 'kat_semua.dart' as semua;
import 'kat_milennial.dart' as milenial;
import 'kat_lifestyle.dart' as lifestyle;
import 'kat_pendidikan.dart' as pendidikan;

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori'),
        backgroundColor: Color(0xff14171a),
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.book), text: "Semua",),
            new Tab(icon: new Icon(Icons.headset_mic), text: "Milenial",),
            new Tab(icon: new Icon(Icons.library_music), text: "Lifestyle",),
            new Tab(icon: new Icon(Icons.public), text: "Pendidikan",),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new semua.Semua(),
          new milenial.Milenial(),
          new lifestyle.Lifestyle(),
          new pendidikan.Pendidikan(),
        ],
      ),
    );
  }
}
