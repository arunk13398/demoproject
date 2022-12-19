import 'package:demoproject/model/Category.dart';

class Product {
  int? _id;
  String? _name;
  String? _image;
  Category _category;

  int get id => _id ?? 0;
  String get name => _name ?? "";
  String get image => _image ?? "";
  Category get category => _category;

  Product.fromJson(Map data, this._category) {
    _id = data['id'];
    _name = data['name'];
    _image = data['image'];
  }
}
