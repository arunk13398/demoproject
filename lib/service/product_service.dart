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
  bool _initLoading = true;
  bool _isLoading = false;

  set setCurrentCategory(Category currentCategory) {
    _currentCategory = currentCategory;
  }

  Category? get currentCategory => _currentCategory;

  ProductService() {
    service = GetIt.instance.get<HttpService>();
  }

  ValueNotifier<List<Product>> get products => _products;
  bool get initLoading => _initLoading;
  bool get isLoading => _isLoading;

  Future<void> next() async {
    print("category page next called");
    _page++;
    _isLoading = true;
    await service.get(
      url: HttpService.productsURL,
      parameter: {"page": _page, "limit": _limit},
      onComplete: (Map data) {
        _isLoading = false;
        _products.value.addAll((data['results'] as List)
            .map((e) => Product.fromJson(e, currentCategory!)));
        _products.notifyListeners();
      },
    );
  }

  Future<void> init() async {
    print("categories init called");
    _initLoading = true;
    _page = 1;
    await service.get(
      url: HttpService.productsURL,
      parameter: {"page": _page, "limit": _limit},
      onComplete: (Map data) {
        _initLoading = false;
        _products.value.clear();
        _products.value.addAll((data['results'] as List)
            .map((e) => Product.fromJson(e, currentCategory!)));

        _products.notifyListeners();
      },
    );
  }
}
