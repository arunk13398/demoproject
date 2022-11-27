import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Theme/theme.dart';

class HomeScreenSeller extends StatefulWidget {
  const HomeScreenSeller({Key? key}) : super(key: key);

  @override
  State<HomeScreenSeller> createState() => _HomeScreenSellerState();
}

class _HomeScreenSellerState extends State<HomeScreenSeller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                   Align(alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top:20.0),
                                child: Text("Hello John",
                                  style: TextStyle(fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),),
                              ),
                              Text("welcome back",
                                style: TextStyle(fontSize: 16,
                                    color: MyColors.myGreyMid3),),
                              SizedBox(height: 5,),


                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            borderRadius:BorderRadius.all(Radius.circular(50),),
                            image:DecorationImage(
                              image: AssetImage('assets/employe.png'),
                              fit: BoxFit.cover,
                            ),color: MyColors.myGreyMid2,
                          ),
                        )
                      ],
                    ),
                  ),
                  // SizedBox(height: 20,),
                  // Text("Create, collaborate, and organize all your task",
                  //   style: TextStyle(fontSize: 30,
                  //       color: Colors.black),),
                  SizedBox(height: 15,),
                  Container(
                      height: 150,
                      width: double.infinity,
                      decoration:const BoxDecoration(
                        borderRadius:BorderRadius.all(Radius.circular(20)),
                        color: MyColors.mySecondary,
                      ),child:
                  Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                          children:  [
                            SizedBox(height: 20,),
                            Text("9 January 2022",
                              style: TextStyle(fontSize: 20,
                                  color: Colors.white),),
                            SizedBox(height: 10,),
                            Text("Rs 30,0000",
                              style: TextStyle(fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Text("All of your profits are here:",
                                  style: TextStyle(fontSize: 16,
                                      color: MyColors.myGreyMid3),),
                                SizedBox(width:5,),
                                Text("185,0000",
                                  style: TextStyle(fontSize: 19,
                                      color: MyColors.myGreyMid2),),
                              ],
                            ),

                          ],
                        ),
                      ),
                  ),
                  SizedBox(height: 15,),
                  Align(alignment:Alignment.topLeft,
                      child: Text("Your Taks", style: TextStyle(fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),)),
                  SizedBox(height: 15,),
                  Card(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10)
                   ),child: Container(
                    height: 80,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              borderRadius:BorderRadius.all(Radius.circular(5),),
                              // image:DecorationImage(
                              //   image: AssetImage('assets/bell.png'),
                              //   fit: BoxFit.cover,
                              // ),color: MyColors.myGreyMid2,
                            ),child: Image(
                            image: AssetImage('assets/notification.png'),
                            height: 250.0,
                            width: 250.0,
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15.0,top: 15),
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text("Active Notifications",style: TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.myAppbarColor),),
                              SizedBox(height: 6,),
                              Text("Deals Notifcation: 10",style: TextStyle(fontSize: 16,
                                  color: MyColors.myBlack),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                    ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),child: Container(
                    height: 80,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              borderRadius:BorderRadius.all(Radius.circular(5),),
                              // image:DecorationImage(
                              //   image: AssetImage('assets/bell.png'),
                              //   fit: BoxFit.cover,
                              // ),color: MyColors.myGreyMid2,
                            ),child: Image(
                            image: AssetImage('assets/chats.png'),
                            fit: BoxFit.cover,
                            height: 250.0,
                            width: 250.0,
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15.0,top: 15),
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text("Chat Notifications",style: TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.myAppbarColor),),
                              SizedBox(height: 6,),
                              Row(
                                children: [
                                  Text("Total Chats : 36",style: TextStyle(fontSize: 16,
                                      color: MyColors.myBlack),),
                                  SizedBox(width: 15,),
                                  Text("New Chats: 10",style: TextStyle(fontSize: 16,
                                      color: MyColors.myBlack),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),child: Container(
                    height: 80,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              borderRadius:BorderRadius.all(Radius.circular(5),),
                              // image:DecorationImage(
                              //   image: AssetImage('assets/bell.png'),
                              //   fit: BoxFit.cover,
                              // ),color: MyColors.myGreyMid2,
                            ),child: Image(
                            image: AssetImage('assets/product.png'),
                            height: 250.0,
                            width: 250.0,
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15.0,top: 15),
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text("Add New Product",style: TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.myAppbarColor),),
                              SizedBox(height: 8,),
                              Text("Add new products and items in to the list ",style: TextStyle(fontSize: 16,
                                  color: MyColors.myBlack),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
