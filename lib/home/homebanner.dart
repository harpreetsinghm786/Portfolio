import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/responsive.dart';

import '../contants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio:Responsive.ismobile(context)?2.5: 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/wallpaper.jpg",
              fit: BoxFit.cover,
            ),
            Container(
              color: darkcolor.withOpacity(0.66),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultpadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Discover my Amazing \nArt Space!",
                    style: Responsive.isdesktop(context)
                        ? Theme.of(context).textTheme.headline3!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.headline5!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                  ),
                  if (Responsive.ismobilelarge(context))
                    SizedBox(
                      height: defaultpadding / 2,
                    ),
                  DefaultTextStyle(
                      style: Responsive.ismobilelarge(context)?Theme.of(context).textTheme.subtitle2! :Theme.of(context).textTheme.subtitle1!,
                      child: Row(
                        children: [
                          if (!Responsive.ismobilelarge(context))
                            Text.rich(TextSpan(text: "<", children: [
                              TextSpan(
                                text: "flutter",
                                style: TextStyle(color: primaryColor),
                              ),
                              TextSpan(text: "> "),
                            ])),

                          Text(
                            "I build ",
                          ),
                          AnimatedTextKit(animatedTexts: [
                            TyperAnimatedText("responsive web and mobile app.",
                                speed: Duration(milliseconds: 60)),
                            TyperAnimatedText("complete E-Commerce app UI",
                                speed: Duration(milliseconds: 60)),
                            TyperAnimatedText(
                                "chat app with dark and light theme",
                                speed: Duration(milliseconds: 60)),
                          ]),
                          if (!Responsive.ismobilelarge(context))
                            Text.rich(TextSpan(text: " </", children: [
                              TextSpan(
                                text: "flutter",
                                style: TextStyle(color: primaryColor),
                              ),
                              TextSpan(text: ">"),
                            ])),
                        ],
                      )),
                  if (!Responsive.ismobilelarge(context))
                    SizedBox(
                      height: defaultpadding,
                    ),

                  if (!Responsive.ismobilelarge(context))
                    ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: defaultpadding * 2,
                                vertical: defaultpadding),
                            backgroundColor: primaryColor),
                        child: Text(
                          "EXPLORE NOW",
                          style: TextStyle(color: darkcolor),
                        ))
                ],
              ),
            )
          ],
        ));
  }
}
