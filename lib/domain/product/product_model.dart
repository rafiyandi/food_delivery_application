class ProductModel {
  final String? name;
  final String? images;
  final double? rating;
  final String? totalTime;

  ProductModel({this.name, this.images, this.rating, this.totalTime});

  factory ProductModel.fromJson(dynamic json) {
    return ProductModel(
        name: json['name'],
        images: json['images'][0]['hostedLargeUrl'] as String,
        rating: json['rating'],
        totalTime: json['totalTime']);
  }

  static List<ProductModel> productModelFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return ProductModel.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Products {name : $name, image : $images, rating, totalTime : $totalTime}';
  }
}
