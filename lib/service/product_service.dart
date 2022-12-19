import 'package:demoproject/model/Category.dart';
import 'package:demoproject/model/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import 'http_service.dart';

class ProductService extends ChangeNotifier {
  late HttpService service;
  Category? _currentCategory;
  final ValueNotifier<List<Product>> _products =
      ValueNotifier(List<Product>.empty(growable: true));
  int _page = 0;
  static const int _limit = 10;
  ValueNotifier<bool> _initLoading = ValueNotifier(true);
  ValueNotifier<bool> _isLoading = ValueNotifier(false);

  set setCurrentCategory(Category currentCategory) {
    _currentCategory = currentCategory;
  }

  Category? get currentCategory => _currentCategory;

  ProductService() {
    service = GetIt.instance.get<HttpService>();
  }

  ValueNotifier<List<Product>> get products => _products;
  ValueNotifier<bool> get initLoading => _initLoading;
  ValueNotifier<bool> get isLoading => _isLoading;

  Future<void> next() async {
    print("category page next called");
    _page++;
    _initLoading.value = true;
    await service.get(
      url: HttpService.productsURL,
      parameter: {"page": _page, "limit": _limit},
      onComplete: (Map data) {
        _products.value.addAll((data['results'] as List)
            .map((e) => Product.fromJson(e, currentCategory!)));
        _initLoading.value = false;
        _products.notifyListeners();
      },
    );
  }

  Future<void> init() async {
    print("categories init called");
    _isLoading.value = true;
    _page = 1;
    await service.get(
      url: HttpService.productsURL,
      parameter: {"page": _page, "limit": _limit},
      onComplete: (Map data) {
        _products.value.clear();
        _products.value.addAll((data['results'] as List)
            .map((e) => Product.fromJson(e, currentCategory!)));
        _isLoading.value = false;
        _products.notifyListeners();
      },
    );
  }
}
