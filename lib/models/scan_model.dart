class ArticleModel {
  final int id;
  final String name;
  final String imageData;


  ArticleModel({this.id = 0, this.name = "", this.imageData = ""});

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      id: json['id'],
      name: json['name'],
      imageData: json['imageData'],
    );
  }
}