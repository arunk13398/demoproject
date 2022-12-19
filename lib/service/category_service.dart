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
  ValueNotifier<bool> _initLoading = ValueNotifier(true);
  ValueNotifier<bool> _isLoading = ValueNotifier(false);

  CategoryService() {
    service = getIt.get<HttpService>();
  }

  ValueNotifier<List<Category>> get categories => _categories;
  ValueNotifier<bool> get initLoading => _initLoading;
  ValueNotifier<bool> get isLoading => _isLoading;

  Future<void> next() async {
    print("category page next called");
    _page++;
    _initLoading.value = true;
    await service.get(
      url: HttpService.categoriesURL,
      parameter: {"page": _page, "limit": _limit},
      onComplete: (Map data) {
        _categories.value
            .addAll((data['results'] as List).map((e) => Category.fromjson(e)));
        _initLoading.value = false;
        _categories.notifyListeners();
      },
    );
  }

  Future<void> init() async {
    print("categories init called");
    _isLoading.value = true;
    _page = 1;
    await service.get(
      url: HttpService.categoriesURL,
      parameter: {"page": _page, "limit": _limit},
      onComplete: (Map data) {
        _categories.value.clear();
        _categories.value
            .addAll((data['results'] as List).map((e) => Category.fromjson(e)));
        _isLoading.value = false;
        _categories.notifyListeners();
      },
    );
  }
}
