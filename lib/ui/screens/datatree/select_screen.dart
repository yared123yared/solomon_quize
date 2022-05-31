import 'package:flutter/material.dart';
import 'package:flutterquiz/ui/screens/datatree/tile.dart';
import 'package:flutterquiz/ui/screens/datatree/tile_data.dart';
import 'package:sizer/sizer.dart';

class OpenQuiz extends StatefulWidget {
  const OpenQuiz({Key? key}) : super(key: key);

  @override
  State<OpenQuiz> createState() => _OpenQuizState();
}

class _OpenQuizState extends State<OpenQuiz> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: ()
            {
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

                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              dividerColor: Colors.transparent,
                            ),
                            child: ListView(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              children: tiles
                                  .map(
                                    (tile) => ExpansionWidget(tile: tile),
                              )
                                  .toList(),
                            ),
                          )),
                      GestureDetector(
                        onTap: () {

                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFF1C658C),
                                Color(0xFF398AB9),
                                Color(0xFF1C658C),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 2.h,
                              horizontal: 20.w,
                            ),
                            child: 7 == 7
                                ? const Text(
                              'Play',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                                : const Text(
                              'Play',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExpansionWidget extends StatefulWidget {
  final Tile tile;
  const ExpansionWidget({
    Key? key,
    required this.tile,
  }) : super(key: key);

  @override
  State<ExpansionWidget> createState() => _ExpansionWidgetState();
}

class _ExpansionWidgetState extends State<ExpansionWidget> {
  @override
  Widget build(BuildContext context) {
    final title = widget.tile.title;

    final tiles = widget.tile.tileItem;

    if (tiles.isEmpty) {
      return ListTile(
        title: Row(
          children: [
            Checkbox(
                value: widget.tile.isSelected,
                onChanged: (value) {
                  setState(() {
                    widget.tile.isSelected = value!;
                  });
                }),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),

              ],
            ),
          ],
        ),
      );
    }
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white30,
        ),
      ),
      child: ExpansionTile(
        title: Row(
          children: [
            Checkbox(
                value: widget.tile.isSelected,
                onChanged: (value) {
                  setState(() {
                    widget.tile.isSelected = value!;
                  });
                }),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),

              ],
            ),
          ],
        ),
        children: tiles.map((tile) => ExpansionWidget(tile: tile)).toList(),
      ),
    );
  }
}
