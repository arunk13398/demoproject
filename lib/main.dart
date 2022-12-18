import 'package:demoproject/Screens/HomeScreen/homeScreen_buyer.dart';
import 'package:demoproject/service/category_service.dart';
import 'package:demoproject/service/http_service.dart';
import 'package:demoproject/service/product_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

Future<void> init() async {
  getIt.registerSingleton(HttpService());
  await getIt.get<HttpService>().init();
  getIt.registerLazySingleton<CategoryService>(() => CategoryService());
  getIt.registerLazySingleton<ProductService>(() => ProductService());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const SplashScreen(),
        // home: const CatogoryHomePage(),
        // home: const CatogorySearch(),
        home: HomeScreenBuyer());
  }
}
