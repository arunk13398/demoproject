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
                          Text("wecome back",
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
                      decoration:const BoxDecoration(
                        borderRadius:BorderRadius.all(Radius.circular(50)),
                        color: MyColors.myGreyMid2,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text("Create, collaborate, and organize all your task",
                style: TextStyle(fontSize: 30,
                    color: Colors.black),),
              SizedBox(height: 25,),
              Container(
                  height: 150,
                  width: double.infinity,
                  decoration:const BoxDecoration(
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                    color: MyColors.mySecondary,
                  ),child: Padding(
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
            ],
          ),
        ),
      ),
    );
  }
}
