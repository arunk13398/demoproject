import 'package:cached_network_image/cached_network_image.dart';
import 'package:demoproject/Screens/HomeScreen/catogory_search.dart';
import 'package:demoproject/Screens/HomeScreen/homescreen_seller.dart';
import 'package:demoproject/Theme/theme.dart';
import 'package:demoproject/main.dart';
import 'package:demoproject/model/Category.dart';
import 'package:demoproject/service/category_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenBuyer extends StatefulWidget {
  const HomeScreenBuyer({Key? key}) : super(key: key);

  @override
  State<HomeScreenBuyer> createState() => _HomeScreenBuyerState();
}

class _HomeScreenBuyerState extends State<HomeScreenBuyer> {
  late ScrollController _categoryScrollController;
  late CategoryService _categoryService;

  @override
  void initState() {
    init();
    super.initState();
  }

  void init() {
    _categoryService = getIt.get<CategoryService>();
    _categoryService.init();
    _categoryScrollController = TrackingScrollController();
    _categoryScrollController.addListener(() {
      if (_categoryScrollController.position.maxScrollExtent ==
          _categoryScrollController.position.pixels) {
        if (!_categoryService.isLoading.value) {
          _categoryService.next();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myGrey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Text(
                                "Dicker Dealz",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "John Smith",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreenSeller()));
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              color: MyColors.myGreyMid2,
                              image: DecorationImage(
                                  image: AssetImage("assets/employe.png"))),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 12,
                      ),

                      // Padding(
                      //   padding: const EdgeInsets.symmetric(
                      //       horizontal: 8.0, vertical: 15),
                      //   child: SearchBox(onSubmit: (str) {}, hint: "Search..."),
                      // ),
                      // Row(
                      //   mainAxisSize: MainAxisSize.max,
                      //   children: [
                      //     Expanded(
                      //       child: Divider(
                      //         endIndent: 5,
                      //         thickness: 2,
                      //       ),
                      //     ),
                      //     Text(
                      //       "OR",
                      //       style: TextStyle(
                      //           fontSize: 20,
                      //           fontWeight: FontWeight.bold,
                      //           color: MyColors.myGreyDark),
                      //     ),
                      //     Expanded(
                      //       child: Divider(
                      //         indent: 5,
                      //         thickness: 2,
                      //       ),
                      //     )
                      //   ],
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Search Category",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.white70,
                        child: Container(
                            height: 365,
                            decoration: BoxDecoration(
                                //color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: ValueListenableBuilder(
                              valueListenable: _categoryService.categories,
                              builder: (BuildContext context, value,
                                      Widget? child) =>
                                  GridView.builder(
                                controller: _categoryScrollController,
                                itemCount: value.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return category(
                                      category: index <= value.length
                                          ? value.elementAt(index)
                                          : null,
                                      context: context);
                                },
                              ),
                            )),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 4,
                            child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HomeScreenSeller()));
                                },
                                textColor: Colors.white,
                                color: Colors.orangeAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: const Text(
                                  "Active Deals",
                                  style: TextStyle(fontSize: 18),
                                )),
                          ),
                          Spacer(),
                          Expanded(
                            flex: 4,
                            child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HomeScreenSeller()));
                                },
                                textColor: Colors.white,
                                color: Colors.orangeAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: const Text(
                                  "Rate Seller",
                                  style: TextStyle(fontSize: 18),
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "whats new",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: 150,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage('assets/poster.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                    color: MyColors.myGreyMid2,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget category(
      {required Category? category, required BuildContext context}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CategorySearch(category!)));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              child: CachedNetworkImage(
                imageUrl: category?.image ??
                    "https://cdn-icons-png.flaticon.com/512/660/660590.png",
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Container(
                        child: CircularProgressIndicator(
                            value: downloadProgress.progress)),
                errorWidget: (context, url, error) => Image.asset(
                  "assets/image.png",
                ),
              ),
            ),
            Text(
              category?.name ?? "",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
