import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OldTestMantPage extends StatefulWidget {
  OldTestMantPage({Key? key}) : super(key: key);

  @override
  State<OldTestMantPage> createState() => _OldTestMantPageState();
}

class _OldTestMantPageState extends State<OldTestMantPage> {
  List<String> images = [
    "assets/photos/book.jpeg",
    "assets/photos/book.jpeg",
    "assets/photos/book.jpeg",
    "assets/photos/book.jpeg",
    "assets/photos/book.jpeg",
    "assets/photos/book.jpeg",
    "assets/photos/book.jpeg",
    "assets/photos/book.jpeg",
    "assets/photos/book.jpeg",
    "assets/photos/book.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF008bba),
                      Color(0xFF036a8d),
                      Color(0xFF025975),
                    ]),
              ),
            ),
            centerTitle: false,
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios)),
            title: Text(
              'Find Your Book',
              style: TextStyle(fontSize: 22),
            ),
            bottom: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF008bba),
                        Color(0xFF036a8d),
                        Color(0xFF025975)
                      ]),
                ),
              ),
              toolbarHeight: 100,
              automaticallyImplyLeading: false,
              title: Center(
                child: Padding(
                  padding: EdgeInsets.all(1.h),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              BorderSide(color: Colors.white, width: 2)),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(width: 2.0, color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      hintText: "Select Some Books",
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: TabBar(
                        indicatorColor: Color(0xFF025975),
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(text: 'Results'),
                          Tab(text: '25 Books'),
                        ],
                      ),
                    ),
                    Container(
                      height: 70.h,
                      child: TabBarView(
                        children: [
                          Expanded(
                            child: GridView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: images.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 4.0,
                                      mainAxisSpacing: 4.0),
                              itemBuilder: (BuildContext context, int index) {
                                return Image(image: AssetImage(images[index]));
                              },
                            ),
                          ),
                          Text("25 books")
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
