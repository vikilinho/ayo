import 'package:ayo/components/cardo.dart';
import 'package:ayo/components/carousel.dart';
import 'package:ayo/components/header.tab.dart';
import 'package:ayo/components/karousel.dart';
import 'package:ayo/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24.0),
            child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return items[index].isButton
                      ? MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 28.0),
                            child: TextButton(
                              onPressed: items[index].onTap,
                              child: Text(
                                items[index].title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      : ListTile(
                          title: Text(
                            items[index].title,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10.0,
                  );
                },
                itemCount: items.length),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(child: Header()),
            Carousel(),
            Center(
              child: Text(
                '"Doing common things uncommonly well".',
                style: GoogleFonts.mulish(
                    color: KpryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Center(
              child: Text(
                "Here are my recent projects",
                style: GoogleFonts.mulish(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Karousel(),
            SizedBox(
              height: 10,
            ),
            Cardo(),
          ],
        ),
      ),
    );
  }
}
