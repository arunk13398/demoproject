import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Theme/theme.dart';

class CatogoryHomePage extends StatefulWidget {
  const CatogoryHomePage({Key? key}) : super(key: key);

  @override
  State<CatogoryHomePage> createState() => _CatogoryHomePageState();
}

class _CatogoryHomePageState extends State<CatogoryHomePage> {
  @override
  Widget build(BuildContext context) {
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
                Text("Catogory name",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                SizedBox( height: 15),
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
                      SizedBox(width: 10,)
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
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
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Renova Goa Resort and Spa",style: TextStyle(
                                      fontSize: 18,fontWeight: FontWeight.bold
                                    ),),SizedBox(height: 5,),
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
                                       Text("Bangaure",style: TextStyle(fontSize: 18),),

                                     ],
                                   ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                              borderRadius: BorderRadius.circular(60)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left:15.0,right: 15,top: 5,bottom: 5),
                                            child: Text("5.2",style: TextStyle(color:Colors.white,fontSize: 16),),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text("Very good",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                            Text("(320 reviews)",style: TextStyle(fontSize: 16,),),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:5.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex:3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Luxe International",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("Dubai,Maldives,Tailand",style: TextStyle(fontSize: 15,),),
                                        Text("more...",style: TextStyle(fontSize: 15,),),
                                       Container(
                                         height: 20,
                                         decoration: BoxDecoration(
                                             color: Colors.greenAccent,
                                             borderRadius: BorderRadius.circular(5)),
                                         child: Padding(
                                           padding: const EdgeInsets.only(left:8.0,right:8,top: 3,bottom: 3),
                                           child: Text("Book Now",style: TextStyle(fontSize: 16,),),
                                         ),
                                       )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Row(
                                      children: [

                                        Padding(
                                          padding: const EdgeInsets.only(left:5.0,bottom: 10,right: 5),
                                          child: Container(
                                            width: 90,
                                            height: 70,
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
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(left:5.0,bottom: 10,right: 5),
                                          child: Container(
                                            width: 90,
                                            height: 70,
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


                      SizedBox(height: 10,),
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
                                      padding: const EdgeInsets.only(top:10.0),
                                      child: Text("Catogory 1",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
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
                                      padding: const EdgeInsets.only(top:10.0),
                                      child: Text("Catogory 1",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 10,),
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
                                      padding: const EdgeInsets.only(top:10.0),
                                      child: Text("Catogory 1",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
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
                                      padding: const EdgeInsets.only(top:10.0),
                                      child: Text("Catogory 1",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
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
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
