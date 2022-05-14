import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../home/widgets/oldtestmantpage.dart';

class SelectBookPage extends StatefulWidget {
  SelectBookPage({Key? key}) : super(key: key);

  @override
  State<SelectBookPage> createState() => _SelectBookPageState();
}

class _SelectBookPageState extends State<SelectBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xFF008bba),
                Color(0xFF036a8d),
                Color(0xFF025975)
              ])),
          child: Center(
            child: Stack(
              children: [
                Stack(
                  children: [
                    Positioned(
                        bottom: 0,
                        child: Image(
                            width: 100.w,
                            fit: BoxFit.cover,
                            image: AssetImage("assets/photos/splash.png")))
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "Please select a testmant,you",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      "can select more than one",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          height: 30.h,
                          width: 25.w,
                          image: AssetImage("assets/photos/old.jpeg"),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Image(
                            height: 30.h,
                            width: 25.w,
                            image: AssetImage("assets/photos/new.jpeg"))
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OldTestMantPage(),
                            ));
                      },
                      child: Container(
                        height: 7.h,
                        width: 70.w,
                        child: Center(
                          child: Text(
                            "Next",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFFce8e12),
                                  Color(0xFFf4b519),
                                ])),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
