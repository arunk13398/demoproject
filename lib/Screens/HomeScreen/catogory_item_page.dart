import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Theme/theme.dart';

class CatogoryHomePage extends StatefulWidget {

   const CatogoryHomePage({Key? key}) : super(key: key);

  @override
  State<CatogoryHomePage> createState() => _CatogoryHomePageState();

}

class _CatogoryHomePageState extends State<CatogoryHomePage> {
  var orientation, size,height,width;
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
                                SizedBox(
                                  width: width/2.1,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Renova Goa Resort and Spa jhbahjbs jhdd hvsvdh",style: TextStyle(
                                          fontSize: 17,fontWeight: FontWeight.bold
                                      ),softWrap: false,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,),
                                      SizedBox(height: 5,),
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
                                         Text("Banglure",style: TextStyle(fontSize: 18),),

                                       ],
                                     ),
                                      SizedBox(height: 5,),
                                      SizedBox(
                                        width: width/2,
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.green,
                                                  borderRadius: BorderRadius.circular(60)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left:10.0,right: 10,top: 2,bottom: 2),
                                                child: Text("5.2",style: TextStyle(color:Colors.white,fontSize: 16),),
                                              ),
                                            ),
                                            SizedBox(
                                              width: width/2.7,
                                              child: Text("Very good"+"(320 reviews)",
                                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                                softWrap: false,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
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
                              padding: const EdgeInsets.only(left:5.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex:3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Luxe International ",
                                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),softWrap: false,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,),
                                        Text("Dubai,Maldives,Tailand",style: TextStyle(fontSize: 15,),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,),
                                        SizedBox(height: 3,),
                                       Container(
                                         height: 20,
                                         decoration: BoxDecoration(
                                             color: Colors.greenAccent,
                                             borderRadius: BorderRadius.circular(5)),
                                         child: Padding(
                                           padding: const EdgeInsets.only(left:8.0,right:8,top: 3,bottom: 3),
                                           child: Text("Book Now",style: TextStyle(fontSize: 16,),),
                                         ),
                                       ),
                                        SizedBox(height: 5,)
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
                                        image: DecorationImage(
                                          image: AssetImage('assets/hotels.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                        color: MyColors.myGreyMid2,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:5.0,left: 3,right: 3),
                                      child: Text("Golden villa resort",
                                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                        softWrap: false,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:3,right: 3),
                                      child: Text("munnar",
                                        style: TextStyle(fontSize: 16,),
                                        softWrap: false,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
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
                                        image: DecorationImage(
                                          image: AssetImage('assets/hotel.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                        color: MyColors.myGreyMid2,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:5.0,left: 3,right: 3),
                                      child: Text("Golden villa resort",
                                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                        softWrap: false,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:3,right: 3),
                                      child: Text("munnar",
                                        style: TextStyle(fontSize: 16,),
                                        softWrap: false,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
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
                                        image: DecorationImage(
                                          image: AssetImage('assets/hotel.png'),
                                          fit: BoxFit.fill,
                                        ),
                                        color: MyColors.myGreyMid2,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:5.0,left: 3,right: 3),
                                      child: Text("Golden villa resort",
                                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                        softWrap: false,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:3,right: 3),
                                      child: Text("munnar",
                                        style: TextStyle(fontSize: 16,),
                                        softWrap: false,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
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
                                        image: DecorationImage(
                                          image: AssetImage('assets/hotels.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                        color: MyColors.myGreyMid2,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:5.0,left: 3,right: 3),
                                      child: Text("Golden villa resort",
                                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                        softWrap: false,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:3,right: 3),
                                      child: Text("munnar",
                                        style: TextStyle(fontSize: 16,),
                                        softWrap: false,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
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
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
