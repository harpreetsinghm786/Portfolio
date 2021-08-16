import 'package:flutter/material.dart';
import 'package:portfolio/components/projects.dart';
import 'package:portfolio/components/responsive.dart';

import '../contants.dart';

class Myprojectcard extends StatelessWidget {
  const Myprojectcard({Key? key, this.crossaxiscount=3,this.childAspectRatio=1.3}) : super(key: key);
  final int crossaxiscount;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {


    return GridView.builder(
        shrinkWrap: true,
        itemCount: demo_projects.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossaxiscount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultpadding,
          mainAxisSpacing: defaultpadding,
        ),
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.all(defaultpadding),
          color: secondarycolor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                demo_projects[index].title!,
                style: Theme.of(context).textTheme.subtitle2,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Spacer(),
              Text(
                demo_projects[index].description!,
                style: TextStyle(height: 1.5),
                maxLines: Responsive.ismobilelarge(context)? 3:4,
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Read More >>",
                  style: TextStyle(color: primaryColor),
                  overflow: TextOverflow.ellipsis,
                ),)
            ],
          ),
        ));
  }
}

