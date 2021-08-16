import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/components/responsive.dart';
import 'package:portfolio/components/sidemenu.dart';
import 'package:portfolio/contants.dart';
import 'package:portfolio/home/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isdesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgcolor,
              leading: Builder(
                builder: (context)=>IconButton(onPressed: (){
                  Scaffold.of(context).openDrawer();
                }, icon: Icon(Icons.menu)),
              )
            ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isdesktop(context))
                Expanded(flex: 2, child: SideMenu()),
              SizedBox(
                width: defaultpadding,
              ),
              Expanded(
                flex: 7,
                child: HomeScreen(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
