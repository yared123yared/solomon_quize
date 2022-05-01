import 'package:flutter/material.dart';
import 'package:flutterquiz/utils/uiUtils.dart';

class splashbg extends StatelessWidget {
  const splashbg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splashbg.png"),
              fit: BoxFit.cover
          )
        //gradient: UiUtils.buildLinerGradient([Theme.of(context).scaffoldBackgroundColor, Theme.of(context).canvasColor], Alignment.topCenter, Alignment.bottomCenter),
      ),
    );
  }
}
