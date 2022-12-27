import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Theme/theme.dart';

class QuatingRequest extends StatefulWidget {
  const QuatingRequest({Key? key}) : super(key: key);

  @override
  State<QuatingRequest> createState() => _QuatingRequestState();
}

class _QuatingRequestState extends State<QuatingRequest> {
  var orientation, size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body:  ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: Colors.blue,
          useInkWell: true,

        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            Center(
              child: Text("Order Notification List",  style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),),
            ),
            Card1(),


          ],
        ),
      ),
    );
  }
}
class Card1 extends StatelessWidget {
  var orientation, size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/employe.png'),
                            fit: BoxFit.cover,
                          ),
                          color: MyColors.myGreyMid2,
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: width/1.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Abilash kj namboothiri sulthan chakravathi veeran",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),
                            softWrap: false,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,),
                          SizedBox(height: 6,),
                          Text("Samsung Glaxy s20 ultra",
                            style: TextStyle(fontSize: 16,),
                            softWrap: false,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,),

                        ],
                      ),
                    )
                  ],
                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Expand view more details",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )),
                    collapsed: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text("Order id : "+"dvjhjbse33fb333363",
                            style: TextStyle(fontSize: 16,),
                            softWrap: false,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "Order date : "+"13-12-2022",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              softWrap: false,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "Specification : "+"6gb/128",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            softWrap: false,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "Color : "+"Red",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            softWrap: false,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "Location : "+"Thrisoor",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            softWrap: false,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          children: [
                            MaterialButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => HomeScreenBuyer()));
                                },
                                textColor: Colors.white,
                                color: Colors.orangeAccent,
                                minWidth: width/2.5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: const Text(
                                  "Reject",
                                  style: TextStyle(fontSize: 18),
                                )),
                            Spacer(),
                            MaterialButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => HomeScreenBuyer()));
                                },
                                textColor: Colors.white,
                                color: Colors.greenAccent,
                                minWidth: width/2.5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: const Text(
                                  "Accept",
                                  style: TextStyle(fontSize: 18),
                                )),
                          ],
                        ),
                      ],
                    ),
                    expanded: Container(),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: expanded,
                          expanded: collapsed,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
