import 'package:calm_app/app/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hexcolor/hexcolor.dart';
import 'home_controller.dart';
import 'package:text_extension/text_extension.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 240.0,
              floating: false,
              pinned: true,
              backgroundColor: primaryDarkColor,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  titlePadding: EdgeInsets.only(left: 15, top: 20),
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            "https://api.adorable.io/avatars/285/abott@adorable.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bom dia,')
                              .setFontSize(12)
                              .setColor(Colors.white60)
                              .light()
                              .left(),
                          Text('Marcelo').setFontSize(14)
                        ],
                      )
                    ],
                  ),
                  background: Stack(
                    children: [
                      Image.asset(
                        "assets/images/bg_header.png",
                        fit: BoxFit.cover,
                        height: 240.0,
                      ),
                      Container(
                        color: primaryDarkColor.withOpacity(0.5),
                        height: 240.0,
                      ),
                    ],
                  )),
            ),
          ];
        },
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                    primaryDarkColor.withOpacity(0.9),
                    primaryDarkColor
                  ])),
              padding: EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          hintText: "Como você está se sentindo ?",
                          hintStyle: TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.1),
                          prefixIconConstraints: BoxConstraints(
                            minHeight: 32,
                            minWidth: 32,
                          ),
                          prefixIcon: Container(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: Image.asset(
                              'assets/icons/smiling_emoji.png',
                              height: 32,
                              width: 32,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text('Tocados recentemente').white().light(),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 220,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 11,
                        itemBuilder: (ctx, i) {
                          return card1(i);
                        },
                        separatorBuilder: (ctx, i) => SizedBox(
                          width: 10,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text('Seus favoritos').white().light(),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 110,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 11,
                        reverse: true,
                        itemBuilder: (ctx, i) {
                          return card2(i);
                        },
                        separatorBuilder: (ctx, i) => SizedBox(
                          width: 10,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    card3(),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 15,
              right: 15,
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primaryDarkColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                        color: secondaryColor,
                        size: 35,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.wb_sunny,
                        color: secondaryColor,
                        size: 35,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.local_florist,
                        color: secondaryColor,
                        size: 35,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.music_note,
                        color: secondaryColor,
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 15,
              right: 15,
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primaryDarkColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                        color: secondaryColor,
                        size: 35,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.wb_sunny,
                        color: secondaryColor,
                        size: 35,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.local_florist,
                        color: secondaryColor,
                        size: 35,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.music_note,
                        color: secondaryColor,
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget card1(int i) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryColor.withOpacity(0.6),
      ),
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/nature$i.jpg',
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Text('Meditação').white().setFontSize(10),
                      decoration: BoxDecoration(
                          color: secondaryColor.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    bottom: 10,
                    left: 10,
                  ),
                  Container(
                    color: primaryDarkColor.withOpacity(0.2),
                    height: 150,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Daily calm').medium().white(),
                Text('10 min').light().white()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget card2(int i) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryColor.withOpacity(0.6),
      ),
      width: 300,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/nature$i.jpg',
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Container(
                  color: primaryDarkColor.withOpacity(0.3),
                  height: 100,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ocean sounds').medium().white(),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text('Music').white().setFontSize(10),
                    decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('10 min').light().white()
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget card3() {
    return Container(
      height: 250,
      width: double.infinity,
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryColor.withOpacity(0.6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Week of Aug, 3')
              .medium()
              .setColor(secondaryColor)
              .setFontSize(24),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              card3ItemDay('Mon', 3, true),
              card3ItemDay('Tue', 4, false),
              card3ItemDay('Wed', 5, false),
              card3ItemDay('Thu', 6, false),
              card3ItemDay('Fri', 7, false),
              card3ItemDay('Sat', 8, false),
              card3ItemDay('Sun', 9, false),
            ],
          ),
          SizedBox(height: 20),
          Text('View history')
              .medium()
              .setColor(secondaryColor)
              .setFontSize(18),

        ],
      ),
    );
  }

  Widget card3ItemDay(String titulo, num nota, bool selecionado) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(titulo).light().white(),
        SizedBox(height: 10),
        Visibility(
          visible: !selecionado,
          child: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: primaryColor,
                width: 3,
              ),
            ),
          ),
          replacement: Image.asset(
            'assets/icons/smiling_emoji.png',
            height: 32,
            width: 32,
          ),
        ),
        SizedBox(height: 10),
        Text('$nota').light().white(),
      ],
    );
  }
}
