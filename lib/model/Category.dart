class Category {
  String? _name;
  String? _image;

  String get name => _name ?? "";
  String get image => _image ?? "";

  Category.fromjson(Map<String, dynamic> data) {
    _name = data['name'];
    _image = data['image'];
  }
}
