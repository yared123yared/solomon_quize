import 'package:flutterquiz/ui/screens/datatree/tile.dart';

final tiles = <Tile>[
  Tile(
    title: 'Full Bible',

    isSelected: false,
   /* tileItem: [
      Tile(
        title: 'Main List 1.1',

        isSelected: false,
        tileItem: [
          Tile(
            title: 'Main List 1.1.1',

            isSelected: false,
          ),
          Tile(
            title: 'Main List 1.1.2',

            isSelected: false,
          ),
        ],
      ),
    ],*/
    // optionData: [
    //   {"option": "Option 1", "isChecked": false},
    //   {"option": "Option 2", "isChecked": false}
    // ],
  ),
  Tile(

    isSelected: false,
    title: 'Old Testmant',
    tileItem: [
      Tile(
        title: 'Numbers',

        isSelected: false,
        tileItem: [
          Tile(
            title: 'Proverbs',

            isSelected: false,
          ),
          Tile(
            title: 'Romans',

            isSelected: false,
          ),
        ],
      ),
    /*  Tile(
        title: 'Main List 2.2',

        isSelected: false,
        tileItem: [
          Tile(
            title: 'Main List 2.2.1',

            isSelected: false,
          ),
        ],
      ),*/
    ],
    // optionData: [
    //   {"option": "Option 1", "isChecked": false},
    //   {"option": "Option 2", "isChecked": false}
    // ],
  ),
  Tile(

    isSelected: false,
    title: 'New Testmant',
    tileItem: [
      Tile(
        title: 'Exodus',

        isSelected: false,
        tileItem: [
          Tile(
            title: 'James',

            isSelected: false,
          ),
          Tile(
            title: 'Mark',

            isSelected: false,
          ),
        ],
      ),
    ],
    // optionData: [
    //   {"option": "Option 1", "isChecked": false},
    //   {"option": "Option 2", "isChecked": false},
    //   {"option": "Option 2", "isChecked": false}
    // ],
  ),
];
