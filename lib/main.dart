import 'package:ayo/constants.dart';
import 'package:ayo/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      darkTheme: Theme.of(context).copyWith(
          primaryColor: KpryColor,
          platform: TargetPlatform.android,
          scaffoldBackgroundColor: KbgColor,
          canvasColor: KbgColor,
          textTheme: GoogleFonts.latoTextTheme()),
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: "MOBILE"),
            ResponsiveBreakpoint.resize(800, name: "TABLET"),
            ResponsiveBreakpoint.resize(1000, name: "TABLEt"),
            ResponsiveBreakpoint.resize(1200, name: "Desktop"),
            ResponsiveBreakpoint.resize(2460, name: "4K")
          ],
          background: Container(
            color: KbgColor,
          )),
      home: Home(),
    );
  }
}
