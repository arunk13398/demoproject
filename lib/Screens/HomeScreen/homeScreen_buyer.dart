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
                                "Welcome User",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),

                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "John samuel",
                                style: TextStyle(
                                    fontSize: 16, color:Colors.black54),
                              ),
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
                      ),
                      SizedBox(height: 5,)
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 12,
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
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),color: Colors.white70,
                        child: Container(
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,top:8,bottom:8),
                        child: Align(alignment:Alignment.topLeft,
                          child: Text("whats new", style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),child: Container(
                        height: 150,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius:BorderRadius.all(Radius.circular(10),),
                                  image:DecorationImage(
                                    image: AssetImage('assets/poster.jpg'),
                                    fit: BoxFit.fill,
                                  ),color: MyColors.myGreyMid2,
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
