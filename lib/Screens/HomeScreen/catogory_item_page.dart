import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Theme/theme.dart';
import '../../main.dart';
import '../../model/Category.dart';
import '../../model/product.dart';
import '../../service/product_service.dart';

class CatogoryHomePage extends StatefulWidget {
  Product? product;
  Category category;

  CatogoryHomePage({this.product, required this.category, Key? key})
      : super(key: key);

  @override
  State<CatogoryHomePage> createState() => _CatogoryHomePageState();
}

class _CatogoryHomePageState extends State<CatogoryHomePage> {
  Product? selected;
  late ProductService _productService;
  late ScrollController _productScrollController;

  @override
  void initState() {
    _productService = getIt.get<ProductService>();
    init();
    setState(() {
      selected = widget.product;
    });
    super.initState();
  }

  void init() {
    _productService.setCurrentCategory = widget.category;
    _productService.init();
    _productScrollController = TrackingScrollController();
    _productScrollController.addListener(() {
      if (_productScrollController.position.maxScrollExtent ==
          _productScrollController.position.pixels) {
        if (!_productService.isLoading.value) {
          _productService.next();
        }
      }
    });
  }

  var orientation, size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Dicker Dealz",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          "John Smith",
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(widget.category.name,
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                SizedBox(height: 15),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: MaterialButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HomeScreenSeller()
                              //     )
                              // );
                            },
                            textColor: Colors.white,
                            color: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: const Text(
                              "Star",
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: MaterialButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HomeScreenSeller()
                              //     )
                              // );
                            },
                            textColor: Colors.white,
                            color: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: const Text(
                              "By Rating",
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: MaterialButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HomeScreenSeller()
                              //     )
                              // );
                            },
                            textColor: Colors.white,
                            color: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: const Text(
                              "By Budget",
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Visibility(
                        visible: selected != null,
                        child: Card(
                          elevation: 2,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      width: 160,
                                      height: 130,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(5),
                                          topLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                        ),
                                        color: MyColors.myGreyMid2,
                                      ),
                                      child: CachedNetworkImage(
                                        imageUrl: selected?.image ??
                                            "https://cdn-icons-png.flaticon.com/512/660/660590.png",
                                        progressIndicatorBuilder: (context, url,
                                                downloadProgress) =>
                                            Container(
                                                child:
                                                    CircularProgressIndicator(
                                                        value: downloadProgress
                                                            .progress)),
                                        errorWidget: (context, url, error) =>
                                            Image.asset("assets/image.png"),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width / 2.1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          selected?.name ?? "",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                          softWrap: false,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Image(
                                          image: AssetImage('assets/star.png'),
                                          height: 19.0,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_sharp,
                                              size: 25,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              "Banglure",
                                              style: TextStyle(fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        SizedBox(
                                          width: width / 2,
                                          child: Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            60)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10.0,
                                                          right: 10,
                                                          top: 2,
                                                          bottom: 2),
                                                  child: Text(
                                                    "5.2",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: width / 2.7,
                                                child: Text(
                                                  "Very good" + "(320 reviews)",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  softWrap: false,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            selected?.name ?? "",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                            softWrap: false,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Text(
                                            "Dubai,Maldives,Tailand",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Container(
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.greenAccent,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0,
                                                  right: 8,
                                                  top: 3,
                                                  bottom: 3),
                                              child: Text(
                                                "Book Now",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5.0,
                                                bottom: 10,
                                                right: 5),
                                            child: Container(
                                              width: 90,
                                              height: 70,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(5),
                                                  topLeft: Radius.circular(5),
                                                  bottomRight:
                                                      Radius.circular(5),
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                ),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/hotels2.jpg'),
                                                  fit: BoxFit.fill,
                                                ),
                                                color: MyColors.myGreyMid2,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5.0,
                                                bottom: 10,
                                                right: 5),
                                            child: Container(
                                              width: 90,
                                              height: 70,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(5),
                                                  topLeft: Radius.circular(5),
                                                  bottomRight:
                                                      Radius.circular(5),
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                ),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/hotels2.jpg'),
                                                  fit: BoxFit.fill,
                                                ),
                                                color: MyColors.myGreyMid2,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.white70,
                        child: Container(
                            decoration: BoxDecoration(
                                //color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: ValueListenableBuilder(
                              valueListenable: _productService.products,
                              builder: (BuildContext context, value,
                                      Widget? child) =>
                                  GridView.builder(
                                controller: _productScrollController,
                                itemCount: value.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () => setState(() {
                                      if (index <= value.length) {
                                        selected = value.elementAt(index);
                                      }
                                    }),
                                    child: productWidget(index <= value.length
                                        ? value.elementAt(index)
                                        : null),
                                  );
                                },
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget productWidget(Product? product) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          height: 170,
          width: 160,
          child: Column(
            children: [
              Container(
                width: 160,
                height: 130,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                  color: MyColors.myGreyMid2,
                ),
                child: CachedNetworkImage(
                  imageUrl: product?.image ??
                      "https://cdn-icons-png.flaticon.com/512/660/660590.png",
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Container(
                          child: CircularProgressIndicator(
                              value: downloadProgress.progress)),
                  errorWidget: (context, url, error) =>
                      Image.asset("assets/image.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 3, right: 3),
                child: Text(
                  product?.name ?? "",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  softWrap: false,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, right: 3),
                child: Text(
                  "munnar",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  softWrap: false,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
