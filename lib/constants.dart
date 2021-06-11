import 'package:flutter/material.dart';

const KpryColor = Color.fromRGBO(5, 123, 108, 1);
const KbgColor = Color.fromRGBO(7, 17, 26, 1);
const KdgColor = Color.fromRGBO(249, 77, 30, 1);
const KcaptionColor = Color.fromRGBO(166, 177, 187, 1);

const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;

class Globals {
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
}
