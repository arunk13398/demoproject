import 'package:demoproject/Theme/theme.dart';
import 'package:demoproject/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenBuyer extends StatefulWidget {
  const HomeScreenBuyer({Key? key}) : super(key: key);

  @override
  State<HomeScreenBuyer> createState() => _HomeScreenBuyerState();
}

class _HomeScreenBuyerState extends State<HomeScreenBuyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: MyColors.myGrey,
          padding: const EdgeInsets.symmetric(horizontal: 15),
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
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Text(
                          "Deal smartly",
                          style: TextStyle(
                              fontSize: 16, color: MyColors.myGreyMid3),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: MyColors.myGreyMid2,
                        image: DecorationImage(
                            image: AssetImage("assets/employe.png"))),
                  )
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome User",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: EdgeInsets.only(left: 5, right: 5, bottom: 3),
                        margin: EdgeInsets.only(bottom: 15, top: 5),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: MyColors.myGreyDark))),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "location...",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.location_on,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 15),
                      child: SearchBox(onSubmit: (str) {}, hint: "Search..."),
                    ),
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
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          //color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: GridView(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        children: [
                          category(
                              title: 'Mobiles and Computers',
                              asset: 'assets/mobilephone.png'),
                          category(
                              title: 'Electronics and Appliances',
                              asset: 'assets/electronics.png'),
                          category(title: 'Hotels', asset: 'assets/hotel.png'),
                          category(
                              title: 'Travel Booking',
                              asset: 'assets/travel.png'),
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
    );
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
            child: Image.asset(asset),
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
