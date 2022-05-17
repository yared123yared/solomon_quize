import 'package:flutter/material.dart';
import 'package:flutterquiz/ui/screens/datatree/tile_data.dart';
import 'package:sizer/sizer.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  // var checkboxTile = List<Widget>;
  // List<Map> options = [
  //   {"option": "Option 1", "isChecked": false},
  //   {"option": "Option 2", "isChecked": false},
  // ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ),
        body: Container(
          height: 100.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/bghome.png',
              ),
            ),
          ),
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
                        image: const AssetImage("assets/images/bottom.png"),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Theme(
                            data: Theme.of(context).copyWith(
                              dividerColor: Colors.blueAccent,
                            ),
                            child: ListView.builder(
                              itemCount: tiles.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                var optiondata = tiles[index].optionData;
                                return Container(
                                  margin: EdgeInsets.only(
                                    bottom: 1.h,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.white30,
                                    ),
                                  ),
                                  child: ExpansionTile(
                                    title: Text(
                                      tiles[index].title,
                                    ),
                                    children: [
                                      for (int i = 0;
                                          i < optiondata.length;
                                          i++)
                                        CheckboxListTile(
                                          value: optiondata[i]['isChecked'],
                                          title: Text(optiondata[i]['option']),
                                          onChanged: (newValue) {
                                            setState(() {
                                              optiondata[i]['isChecked'] =
                                                  newValue;
                                            });
                                          },
                                        )
                                    ],

                                    // children: options
                                    //     .map((option) => CheckboxListTile(
                                    //         value: option['isChecked'],
                                    //         title: Text(option['option']),
                                    //         onChanged: (newValue) {
                                    //           setState(() {
                                    //             option['isChecked'] =
                                    //                 newValue;
                                    //           });
                                    //         }))
                                    //     .toList(),
                                  ),
                                );
                              },
                            )),
                      ),
                    ],
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
