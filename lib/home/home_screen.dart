import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/myprojectcard.dart';
import 'package:portfolio/components/projects.dart';
import 'package:portfolio/components/recommendation_cart.dart';
import 'package:portfolio/components/recommendations.dart';
import 'package:portfolio/components/responsive.dart';
import 'package:portfolio/contants.dart';
import 'package:portfolio/home/highlight_info.dart';

import 'animated_counter.dart';
import 'homebanner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        HomeBanner(),
        HighlightInfo(),
        Padding(
          padding: EdgeInsets.only(left: defaultpadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Projects",
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: defaultpadding,
              ),
              Responsive(
                  mobile: Myprojectcard(crossaxiscount: 1,childAspectRatio: 1.8,),
                  mobilelarge: Myprojectcard(
                    crossaxiscount: 2,
                  ),
                  tablet: Myprojectcard(
                    childAspectRatio: 1.1,
                  ),
                  desktop: Myprojectcard()),
              SizedBox(
                height: defaultpadding,
              ),
              Text(
                "Recommendations",
                style: Theme.of(context).textTheme.headline6,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    demo_recommendations.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(right: defaultpadding),
                      child: recommendations(
                        name: demo_recommendations[index].name,
                        source: demo_recommendations[index].source,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
