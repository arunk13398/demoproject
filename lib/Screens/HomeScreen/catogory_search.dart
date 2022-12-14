import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Theme/theme.dart';

class CatogorySearch extends StatefulWidget {
  const CatogorySearch({Key? key}) : super(key: key);

  @override
  State<CatogorySearch> createState() => _CatogorySearchState();
}

class _CatogorySearchState extends State<CatogorySearch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child: Container(
            child:
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 20.0,left: 10),
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
                          padding: EdgeInsets.only(left: 10.0,),
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
                  SizedBox( height: 20),

                  Row(
                    children: [
                      Container(
                        width: 120,
                        height: 150,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            topLeft: Radius.circular(5),
                            bottomRight:  Radius.circular(5),
                            bottomLeft:  Radius.circular(5),

                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/hotels2.jpg'),
                            fit: BoxFit.fill,
                          ),
                          color: MyColors.myGreyMid2,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text("Get best deals in Hotel \nStays and cab Bookings",
                                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 2),
                          ),
                          MaterialButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => HomeScreenSeller()));
                              },
                              textColor: Colors.white,
                              color: Colors.orange,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child:  Padding(
                                padding: const EdgeInsets.only(left: 30.0,right: 30),
                                child: Text(
                                  "Location",
                                  style: TextStyle(fontSize: 18),
                                ),
                              )),
                          Row(
                            children: [
                              SizedBox(width: 15,),
                              MaterialButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => HomeScreenSeller()));
                                  },
                                  textColor: Colors.white,
                                  color: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0)),
                                  child:  Text(
                                    "Book Hotel",
                                    style: TextStyle(fontSize: 18),
                                  )),
                              SizedBox(width: 15,),
                              MaterialButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => HomeScreenSeller()));
                                  },
                                  textColor: Colors.white,
                                  color: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0)),
                                  child:  Text(
                                    "Book Cab",
                                    style: TextStyle(fontSize: 18),
                                  )),
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                  SizedBox( height: 20),
                  Text("Suggested For you",style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                  SizedBox( height: 10),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            height: 170,
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
                                    image: DecorationImage(
                                      image: AssetImage('assets/hotels.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                    color: MyColors.myGreyMid2,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:3.0),
                                  child: Column(
                                    children: [
                                      Text("Star Villa",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                                      Text("Delhi",style: TextStyle(fontSize: 16,),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            height: 170,
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
                                    image: DecorationImage(
                                      image: AssetImage('assets/hotel.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    color: MyColors.myGreyMid2,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:3.0),
                                  child: Column(
                                    children: [
                                      Text("Lavendor",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                                      Text("Mysoor",style: TextStyle(fontSize: 16,),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            height: 170,
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
                                    image: DecorationImage(
                                      image: AssetImage('assets/hotels.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                    color: MyColors.myGreyMid2,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:3.0),
                                  child: Column(
                                    children: [
                                      Text("Morning Mist",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                                      Text("Wayanad",style: TextStyle(fontSize: 16,),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            height: 170,
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
                                    image: DecorationImage(
                                      image: AssetImage('assets/hotel.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    color: MyColors.myGreyMid2,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:3.0),
                                  child: Column(
                                    children: [
                                      Text("Safari",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                                      Text("Trisoor",style: TextStyle(fontSize: 16,),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}
