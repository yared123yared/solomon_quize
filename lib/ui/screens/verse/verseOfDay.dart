import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VerseOfDay extends StatefulWidget {
  const VerseOfDay({Key? key}) : super(key: key);

  @override
  State<VerseOfDay> createState() => _VerseOfDayState();
}

class _VerseOfDayState extends State<VerseOfDay> {
  int currentIndex = 0;
  final PageController _controller = PageController(initialPage: 0);


  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {Navigator.pop(context);},
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
            ),
          ),
          actions: [],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/background1.jpeg',
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
             // horizontal: 8.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 65.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 8,
                    ),
                    color: const Color(0xFF282a27).withOpacity(0.7),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        const Text(
                          'Verse Of The day',
                          style: TextStyle(
                            color: Color(0xFFd9940d),
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        FutureBuilder(
                          future: DefaultAssetBundle.of(context)
                              .loadString('assets/files/verse_data.json'),
                          builder: (context, snapshot) {
                            var items = json.decode(snapshot.data.toString());
                            if (snapshot.hasData) {
                              return Expanded(
                                child: PageView.builder(
                                  controller: _controller,
                                  itemCount: items.length,
                                  onPageChanged: (int value) {
                                    setState(() {
                                      currentIndex = value;
                                    });
                                  },
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        Text(
                                          items[index]['title'],
                                          style: const TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            //horizontal: 6.w,
                                          ),
                                          child: Text(
                                            items[index]['desc'],
                                            maxLines: 5,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              height: 1.3,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              );
                            } else {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _controller.nextPage(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.ease,
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFd3860a),
                          Color(0xFFf8b91a),
                          Color(0xFFcf8407),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 2.h,
                        //horizontal: 20.w,
                      ),
                      child: currentIndex == 4
                          ? const Text(
                              'Done',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : const Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
