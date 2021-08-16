import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/myinfo.dart';
import 'package:portfolio/components/skills.dart';
import 'package:portfolio/contants.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledge.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Myinfo(),
            Expanded(
              child: SingleChildScrollView(

                padding: EdgeInsets.all(defaultpadding),
                child: Column(
                  children: [

                    AreaInfoText(
                      title: "Residence",
                      text: "Punjab",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Patiala",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "21",
                    ),
                    Skills(),
                    SizedBox(
                      height: defaultpadding,
                    ),
                    Coding(),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: defaultpadding),
                      child: Text(
                        "Knowledge",
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                    Knowledge(text: "Bootstrap, Material Library"),
                    Knowledge(text: "BannerSnack, Canva Editor"),
                    Knowledge(text: "Android Studio, VS code"),
                    Knowledge(text: "Git Knowledge"),
                    Divider(),
                    SizedBox(
                      height: defaultpadding / 2,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                "DOWNLOAD CV",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color),
                              ),
                              SizedBox(
                                width: defaultpadding / 2,
                              ),
                              Icon(
                                Icons.download,
                                color:
                                    Theme.of(context).textTheme.bodyText1!.color,
                              ),
                            ],
                          ),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: defaultpadding / 2),
                      color: Color(0xff24242e),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset("assets/images/linkedin.png",color: primaryColor,)),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset("assets/images/github.png",color: primaryColor,)),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset("assets/images/twitter.png",color: primaryColor,)),
                          Spacer(),
                        ],
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
}
