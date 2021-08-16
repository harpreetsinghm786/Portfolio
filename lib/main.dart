import 'package:flutter/material.dart';
import 'package:portfolio/MainScreen.dart';
import 'package:portfolio/contants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Portfolio",
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgcolor,
        canvasColor: bgcolor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: Colors.white)
          .copyWith(
          bodyText1: TextStyle(color: bodytextcolor),
          bodyText2: TextStyle(color: bodytextcolor),

        ),

      ),
      home: MainScreen(),
    );
  }


}
