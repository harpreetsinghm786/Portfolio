import 'package:flutter/material.dart';

class Myinfo extends StatelessWidget {
  const Myinfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xff242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Spacer(flex: 2,),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/profile.jpg"),

            ),
            Spacer(),
            Text(
              "Harpreet Singh",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text("Flutter Developer & Founder of \n Technominds",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5
              ),),
            Spacer(flex: 2,),

          ],
        ),
      ),
    );
  }
}
