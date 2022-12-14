class Category {
  String? _name;
  String? _image;
  int? _id;

  int get id => _id ?? 0;
  String get name => _name ?? "";
  String get image => _image ?? "";

  Category.fromjson(Map<String, dynamic> data) {
    _id = data['id'];
    _name = data['name'];
    _image = data['image'];
  }
}
