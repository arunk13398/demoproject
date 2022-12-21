import 'package:flutter/cupertino.dart';

import '../main.dart';
import '../model/Category.dart';
import 'http_service.dart';

class CategoryService {
  late HttpService service;
  static const int _limit = 10;
  final ValueNotifier<List<Category>> _categories =
      ValueNotifier(List<Category>.empty(growable: true));
  int _page = 1;
  bool _initLoading = true;
  bool _isLoading = false;

  CategoryService() {
    service = getIt.get<HttpService>();
  }

  ValueNotifier<List<Category>> get categories => _categories;
  bool get initLoading => _initLoading;
  bool get isLoading => _isLoading;

  Future<void> next() async {
    print("category page next called");
    _page++;
    _isLoading = true;
    await service.get(
      url: HttpService.categoriesURL,
      parameter: {"page": _page, "limit": _limit},
      onComplete: (Map data) {
        _isLoading = false;
        _categories.value
            .addAll((data['results'] as List).map((e) => Category.fromjson(e)));
        _categories.notifyListeners();
      },
    );
  }

  Future<void> init() async {
    print("categories init called");
    _initLoading = true;
    _page = 1;
    await service.get(
      url: HttpService.categoriesURL,
      parameter: {"page": _page, "limit": _limit},
      onComplete: (Map data) {
        _initLoading = false;
        _categories.value.clear();
        _categories.value
            .addAll((data['results'] as List).map((e) => Category.fromjson(e)));
        _categories.notifyListeners();
      },
    );
  }
}
