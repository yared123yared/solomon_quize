class Tile {
  final String title;
  //final String subTitle;
  bool isSelected;
  final List<Tile> tileItem;
  // final List<Map> optionData;
  Tile({
    required this.title,
    //required this.subTitle,
    required this.isSelected,
    this.tileItem = const [],
  });
}
