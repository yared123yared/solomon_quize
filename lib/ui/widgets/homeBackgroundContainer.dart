import 'package:flutter/material.dart';
import 'package:flutterquiz/utils/uiUtils.dart';

class homeBackgroundContainer extends StatelessWidget {
  const homeBackgroundContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bghome.png"),
              fit: BoxFit.cover
          )
        //gradient: UiUtils.buildLinerGradient([Theme.of(context).scaffoldBackgroundColor, Theme.of(context).canvasColor], Alignment.topCenter, Alignment.bottomCenter),
      ),
    );
  }
}
