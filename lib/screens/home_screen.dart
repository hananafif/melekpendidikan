import 'package:melekpendidikan/consttants.dart';
import 'package:melekpendidikan/screens/category_screen.dart';
import 'package:melekpendidikan/screens/content/penc_makanan.dart';
import 'package:melekpendidikan/widgets/book_rating.dart';
import 'package:melekpendidikan/widgets/reading_card_list.dart';
import 'package:melekpendidikan/widgets/two_side_rounded_button.dart';

import 'package:flutter/material.dart';

import 'package:melekpendidikan/screens/content/pers_sosiologi.dart';
import 'package:melekpendidikan/screens/content/penc_makanan.dart';
import 'package:melekpendidikan/screens/content/pend_ortu_mil.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Melek Pendidikan"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff14171a),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg_mainmenu.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.display1,
                        children: [
                          TextSpan(
                            text: "Mau baca Materi \napa ",
                            style: TextStyle(color: PrimaryCol)
                          ),
                          TextSpan(
                              text: "hari ini?",
                              style: TextStyle(
                                color: PrimaryCol,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ReadingListCard(
                          image: "assets/images/perssos.png",
                          title: "Perspektif Sosiologi",
                          auth: "Naufintya Rizky",
                          pressRead: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return PersSosi();
                                },
                              ),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: "assets/images/sispencman.png",
                          title: "Pencernaan Makanan",
                          auth: "Dika Dwi",
                          pressRead: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return PencMakanan();
                                },
                              ),
                            );
                          },
                        ),
                        CountainerFullList(
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.display1,
                            children: [
                              TextSpan(
                                text: "Paling ",
                                style: TextStyle(
                                  color: PrimaryCol,
                                )
                              ),
                              TextSpan(
                                text: "Populer",
                                style: TextStyle(
                                    color: PrimaryCol,
                                    fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        bestOfTheDayCard(size, context),
                        SizedBox(height: 30),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.display1,
                            children: [
                              TextSpan(text: "Semua ",
                              style: TextStyle(
                                color: PrimaryCol,
                              )),
                              TextSpan(
                                text: "Kategori...",
                                style: TextStyle(
                                    color: PrimaryCol,
                                    fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                          child: Container(
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(38.5),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 33,
                                  color: Color(0xFFD3D3D3).withOpacity(.84),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(38.5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 30, right: 20),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Milenial",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(height: 2),
                                                Text(
                                                  "Untuk kamu yang Up to Date",
                                                  style: TextStyle(
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                                SizedBox(height: 24),
                                              ],
                                            ),
                                          ),
                                          Icon (
                                            Icons.arrow_forward_ios,
                                            color: Color(0xffa8a8a8),
                                            size: 24.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreen()));
                          },
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          child: Container(

                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(38.5),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 33,
                                  color: Color(0xFFD3D3D3).withOpacity(.84),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(38.5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.only(left: 30, right: 20),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Lifestyle",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(height: 2),
                                                Text(
                                                  "Untuk kamu yang suka hal baru",
                                                  style: TextStyle(
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                                SizedBox(height: 24),
                                              ],
                                            ),
                                          ),
                                          Icon (
                                            Icons.arrow_forward_ios,
                                            color: Color(0xffa8a8a8),
                                            size: 24.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreen()));
                          },
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          child: Container(
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(38.5),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 33,
                                  color: Color(0xFFD3D3D3).withOpacity(.84),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(38.5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.only(left: 30, right: 20),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.end,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Knowledge",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(height: 2),
                                                Text(
                                                  "Untuk kamu yang penasaran",
                                                  style: TextStyle(
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                                SizedBox(height: 24),
                                              ],
                                            ),
                                          ),
                                          Icon (
                                            Icons.arrow_forward_ios,
                                            color: Color(0xffa8a8a8),
                                            size: 24.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreen()));
                          },
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 33,
                    color: kShadowColor,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Paling Banyak Dibaca Dalam Seminggu",
                    style: TextStyle(
                      fontSize: 12,
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Pendidikan \nOrang Tua\nMilenial",
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Misbahul Huda",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/images/menjormil.png",
              width: size.width * .37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: "Baca",
                radious: 24,
                press: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) {
                            return PendOrtuMil();
                          }
                      ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CountainerFullList extends StatelessWidget {
  final Function PressKategori;

  const CountainerFullList({
    Key key,
    this.PressKategori,
}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: InkWell(
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 221,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 33,
                      color: kShadowColor,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Container(
                padding: EdgeInsets.only(top: 30),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment:  MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      color: Color(0xffa8a8a8),
                      size: 48,
                    ),
                    SizedBox(height: 5),
                    Text('Lihat Semua \n Materi', style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xffa8a8a8)
                    ),textAlign: TextAlign.center,),
                  ],
                ),
              ),
            ),
          ],
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreen()));
        },
      ),
    );
  }
}

