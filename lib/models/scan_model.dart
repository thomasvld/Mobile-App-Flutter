class ScanModel {
  final int id;
  final String name;
  final String imageData;

//définit le modèle de données
  ScanModel({this.id = 0, this.name = "", this.imageData = ""});

  factory ScanModel.fromJson(Map<String, dynamic> json) {
    return ScanModel(
      id: json['id'],
      name: json['name'],
      imageData: json['imageData'],
    );
  }
}