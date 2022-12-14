import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:demoproject/Screens/HomeScreen/homescreen_seller.dart';
import 'package:demoproject/Theme/theme.dart';
import 'package:demoproject/model/Category.dart';
import 'package:demoproject/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreenBuyer extends StatefulWidget {
  const HomeScreenBuyer({Key? key}) : super(key: key);

  @override
  State<HomeScreenBuyer> createState() => _HomeScreenBuyerState();
}

class _HomeScreenBuyerState extends State<HomeScreenBuyer> {
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
                          child: FutureBuilder<List<Category>>(
                              future: getData(),
                              builder: (context, data) {
                                if (data.hasError) {
                                  return const Center(
                                      child: Text(
                                    "Something went Wrong!",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ));
                                }
                                if (data.hasData) {
                                  return GridView.builder(
                                    itemCount: data.data?.length ?? 0,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,

                                    ),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return category(
                                          title: data.data
                                                  ?.elementAt(index)
                                                  .name ??
                                              "",
                                          asset: data.data
                                                  ?.elementAt(index)
                                                  .image ??
                                              "");
                                    },
                                  );
                                }
                                return Center(
                                    child: CircularProgressIndicator());
                              }),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Expanded(
                            flex: 4,
                            child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreenSeller()));
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
                                          builder: (context) => HomeScreenSeller()));
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
                          SizedBox(width: 10,),
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

  Future<List<Category>> getData() async {
    var _token = "974f7eb4bef311044b8b32a678705b3253e456a4";
    var response = await http.get(
        Uri.http("ec2-65-2-175-57.ap-south-1.compute.amazonaws.com:8001",
            "api/v1/product-categories"),
        headers: {
          "Authorization": "Token 974f7eb4bef311044b8b32a678705b3253e456a4"
        });
    print("status code ${response.statusCode}");
    if (response.statusCode != 200) throw Exception();
    var data = json.decode(response.body);
    return (data['results'] as List).map((e) => Category.fromjson(e)).toList();
  }

  Widget category({required String title, required String asset}) {
    return Container(
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
              imageUrl: asset,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Container(
                      child: CircularProgressIndicator(
                          value: downloadProgress.progress)),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
