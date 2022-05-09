import 'package:flutter/material.dart';
import 'package:flutterquiz/utils/uiUtils.dart';

class registerBackGroundContainer extends StatelessWidget {
  const registerBackGroundContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/register.png"),
              fit: BoxFit.cover
          )
        //gradient: UiUtils.buildLinerGradient([Theme.of(context).scaffoldBackgroundColor, Theme.of(context).canvasColor], Alignment.topCenter, Alignment.bottomCenter),
      ),
    );
  }
}
