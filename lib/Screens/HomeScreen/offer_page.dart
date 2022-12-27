import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  State<OfferPage> createState() => _OfferPageState();
}
var orientation, size, height, width;
class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:10,right: 10),
          child: Column(
            children: [
              SizedBox(height: 50),
              Container(
                width: width/1,
                child: Center(
                  child: Text("In next 6 hours you will get quotes from these vendos",
                    style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold),softWrap: false,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(7),
                        topLeft: Radius.circular(7),
                        bottomLeft:  Radius.circular(7),
                        bottomRight: Radius.circular(7),
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Container(
                          width: width/1.3,
                          child: Column(
                            children: [

                              SizedBox(height: 5,width: 10,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(7),
                                        topLeft: Radius.circular(7),
                                        bottomLeft:  Radius.circular(7),
                                        bottomRight: Radius.circular(7),
                                      ),
                                      child: Image(
                                        image: AssetImage('assets/hotels.jpg'),
                                        width: width/4.5,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4,),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(7),
                                        topLeft: Radius.circular(7),
                                        bottomLeft:  Radius.circular(7),
                                        bottomRight: Radius.circular(7),
                                      ),
                                      child: Image(
                                        image: AssetImage('assets/hotels2.jpg'),
                                        width: width/4.5,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4,),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(7),
                                        topLeft: Radius.circular(7),
                                        bottomLeft:  Radius.circular(7),
                                        bottomRight: Radius.circular(7),
                                      ),
                                      child: Image(
                                        image: AssetImage('assets/hotel.jpg'),
                                        width: width/4.5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(7),
                                        topLeft: Radius.circular(7),
                                        bottomLeft:  Radius.circular(7),
                                        bottomRight: Radius.circular(7),
                                      ),
                                      child: Image(
                                        image: AssetImage('assets/hotels.jpg'),
                                        width: width/4.5,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4,),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(7),
                                        topLeft: Radius.circular(7),
                                        bottomLeft:  Radius.circular(7),
                                        bottomRight: Radius.circular(7),
                                      ),
                                      child: Image(
                                        image: AssetImage('assets/hotels2.jpg'),
                                        width: width/4.5,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4,),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(7),
                                        topLeft: Radius.circular(7),
                                        bottomLeft:  Radius.circular(7),
                                        bottomRight: Radius.circular(7),
                                      ),
                                      child: Image(
                                        image: AssetImage('assets/hotel.jpg'),
                                        width: width/4.5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5,width: 10,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

              ),
              Text("Your best offer , Choose your choices",style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold),softWrap: false,
                maxLines: 2,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [

                      Row(
                        children: [
                          Text("Offer Price:",style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold),softWrap: false,
                            maxLines: 2,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,),
                          Text("3200",style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold),softWrap: false,
                            maxLines: 2,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Real Price:",style:TextStyle(fontSize: 18,),softWrap: false,
                            maxLines: 2,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,),
                          Text("3600",style:TextStyle(fontSize: 18,),softWrap: false,
                            maxLines: 2,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,),
                        ],
                      ),
                      Row(
                        children: [
                          Text("No of rooms: ",style:TextStyle(fontSize: 18,),softWrap: false,
                            maxLines: 2,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,),
                          Text("2 nos",style:TextStyle(fontSize: 18,),softWrap: false,
                            maxLines: 2,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(7),
                      topLeft: Radius.circular(7),
                      bottomLeft:  Radius.circular(7),
                      bottomRight: Radius.circular(7),
                    ),
                    child: Image(
                      image: AssetImage('assets/hotel.jpg'),
                      width: width/3,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Time Remaining:",style:TextStyle(fontSize: 22),softWrap: false,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,),
                  SizedBox(width: 10,),
                  Text("00:30:25",style:TextStyle(fontSize: 22, color: Colors.blue),softWrap: false,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,),
                ],
              ),
              SizedBox(height: 10,),
              MaterialButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => HomeScreenBuyer()));
                  },
                  textColor: Colors.white,
                  color: Colors.orangeAccent,
                  minWidth: width/1.5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Text(
                    "End Time",
                    style: TextStyle(fontSize: 18),
                  )),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10),
                child: Text("Click to close this deals or wait till timer ends",style:TextStyle(fontSize: 22),softWrap: false,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,),
              ),
              SizedBox(height: 10,),
              MaterialButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => HomeScreenBuyer()));
                  },
                  textColor: Colors.white,
                  color: Colors.orangeAccent,
                  minWidth: width/1.5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Text(
                    "Ok",
                    style: TextStyle(fontSize: 18),
                  )),
             SizedBox(height: height/4,),
              Align(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => HomeScreenBuyer()));
                    },
                    textColor: Colors.white,
                    color: Colors.greenAccent,
                    minWidth: double.infinity,
                    height: 40,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: const Text(
                      "Next",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
