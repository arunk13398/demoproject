import 'package:demoproject/Screens/HomeScreen/qr_geration_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../Theme/theme.dart';
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();


}

class _BookingPageState extends State<BookingPage> {
  TextEditingController dateController=TextEditingController();
  TextEditingController dateController1=TextEditingController();

  late String ValueChoose;
  List listitem =["item1","item2","item3","item4"];

  @override
  void initState(){
    super.initState();
    dateController.text="";
    dateController1.text="";
  }
  var orientation, size,height,width;
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 25,),
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
          SizedBox(height: 25,),
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

          Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Stay from",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(width: 30,),
                    Container(
                      width: width/2.5,
                        padding: const EdgeInsets.all(10),
                        child: Center(
                            child: TextField(style: TextStyle(fontSize: 18,),
                          controller: dateController1,
                          decoration: const InputDecoration(
                              icon: Icon(Icons.calendar_month,
                              size: 30,
                              color: Colors.black87),
                              labelText: "Select start date",


                          ),
                          readOnly: true,
                          onTap: () async{
                            DateTime? pickedDate=await showDatePicker(context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2101),
                            );
                            if(pickedDate!=null){
                              String formattedDate=DateFormat("yyyy-MM-dd").format(pickedDate);

                              setState(() {
                                dateController1.text=formattedDate.toString();
                              });
                            }else{
                              print("Not selected");
                            }
                          },
                        ))),
                  ],
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Stay to",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(width: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Container(
                          width: width/2.5,
                          padding: const EdgeInsets.all(10),
                          child: Center(
                              child: TextField(style: TextStyle(fontSize: 18,),
                                controller: dateController,
                                decoration: const InputDecoration(
                                  icon: Icon(Icons.calendar_month,size: 30,
                                      color: Colors.black87),
                                  labelText: "Select end date",

                                ),
                                readOnly: true,
                                onTap: () async{
                                  DateTime? pickedDate=await showDatePicker(context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2101),
                                  );
                                  if(pickedDate!=null){
                                    String formattedDate=DateFormat("yyyy-MM-dd").format(pickedDate);

                                    setState(() {
                                      dateController.text=formattedDate.toString();
                                    });
                                  }else{
                                    print("Not selected");
                                  }
                                },
                              ))),
                    ),
                  ],
                ),

              ),
            ],
          ),

                Padding(
                  padding: const EdgeInsets.only(left:0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Deal Period",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      SizedBox(width: 32),
                      Container(
                        width: width/2.7,
                        child: DropdownButton<String>(
                             value: dropdownValue,
                             elevation: 16,
                             style: const TextStyle(color: Colors.black),
                             underline: Container(
                             height: 2,
                             color: Colors.white,
                              ),
            onChanged: (String? value) {
           // This is called when the user selects an item.
            setState(() {
             dropdownValue = value!;
                         });
               },
            items: list.map<DropdownMenuItem<String>>((String value) {
           return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
              );
          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QrGenerationPage()));
              },
                textColor: Colors.white,
                color: Colors.greenAccent,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),

                child: const Text(
                  "Sent your intrest",
                  style: TextStyle(fontSize: 18),
                )),
          ),

               Align(alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:15,top: 20),
                child: Text("Offers Near you",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              )),
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
    );


  }
}
