class DataModel {
  String? chapter;
  String? title;
  String? desc;

  DataModel({this.chapter, this.title, this.desc});

  DataModel.fromJson(Map<String, dynamic> json) {
    chapter = json['chapter'];
    title = json['title'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['chapter'] = chapter;
    data['title'] = title;
    data['desc'] = desc;
    return data;
  }
}
