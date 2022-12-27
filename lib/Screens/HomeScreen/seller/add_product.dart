import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Constants/custom_decoration.dart';
import '../../../Theme/theme.dart';
const List<String> list = <String>['select item','Service', 'Product',];
class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: Padding(
             padding: const EdgeInsets.all(10.0),
             child: SingleChildScrollView(
               child: Container(
                 child: Column(
                   children: [
                     SizedBox(height: 50,),
                     Text("Add Product", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                     SizedBox(height: 10,),
                     Padding(
                       padding: const EdgeInsets.only(left:10.0,right:10),
                       child: Row(
                         children: [
                           Text("Select Product catogery type -", style: TextStyle(fontSize: 18,),),
                           Spacer(),
                           Container(
                             child: DropdownButton<String>(
                               value: dropdownValue,
                               elevation: 16,
                               style: const TextStyle(color: Colors.black,fontSize: 20),
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
                               items: list
                                   .map<DropdownMenuItem<String>>((String value) {
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
                       padding: const EdgeInsets.all(8.0),
                       child: TextFormField(
                         decoration: InputDecoration(
                           border: const OutlineInputBorder(),
                           labelText: 'Item Name',
                           hintText: 'Item Name',
                           filled: true,
                           fillColor: MyColors.myGrey,
                           enabledBorder: customEnabledBorder,
                           focusedBorder: customFocusedBorder,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextFormField(
                         decoration: InputDecoration(
                           border: const OutlineInputBorder(),
                           labelText: 'Product id',
                           hintText: 'Product id',
                           filled: true,
                           fillColor: MyColors.myGrey,
                           enabledBorder: customEnabledBorder,
                           focusedBorder: customFocusedBorder,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextFormField(
                         decoration: InputDecoration(
                           border: const OutlineInputBorder(),
                           labelText: 'Model Number',
                           hintText: 'Model Number',
                           filled: true,
                           fillColor: MyColors.myGrey,
                           enabledBorder: customEnabledBorder,
                           focusedBorder: customFocusedBorder,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextFormField(
                         decoration: InputDecoration(
                           border: const OutlineInputBorder(),
                           labelText: 'Number of stocks Available',
                           hintText: 'Number of stocks',
                           filled: true,
                           fillColor: MyColors.myGrey,
                           enabledBorder: customEnabledBorder,
                           focusedBorder: customFocusedBorder,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextFormField(
                         decoration: InputDecoration(
                           border: const OutlineInputBorder(),
                           labelText: 'Color',
                           hintText: 'Color',
                           filled: true,
                           fillColor: MyColors.myGrey,
                           enabledBorder: customEnabledBorder,
                           focusedBorder: customFocusedBorder,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextFormField(
                         decoration: InputDecoration(
                           border: const OutlineInputBorder(),
                           labelText: 'Specification 1',
                           hintText: 'Item Name',
                           filled: true,
                           fillColor: MyColors.myGrey,
                           enabledBorder: customEnabledBorder,
                           focusedBorder: customFocusedBorder,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextFormField(
                         decoration: InputDecoration(
                           border: const OutlineInputBorder(),
                           labelText: 'Specification 2',
                           hintText: 'Specification 2',
                           filled: true,
                           fillColor: MyColors.myGrey,
                           enabledBorder: customEnabledBorder,
                           focusedBorder: customFocusedBorder,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextFormField(
                         decoration: InputDecoration(
                           border: const OutlineInputBorder(),
                           labelText: 'Specification 3',
                           hintText: 'Specification 3',
                           filled: true,
                           fillColor: MyColors.myGrey,
                           enabledBorder: customEnabledBorder,
                           focusedBorder: customFocusedBorder,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextFormField(
                         decoration: InputDecoration(
                           border: const OutlineInputBorder(),
                           labelText: 'Offer Price',
                           hintText: 'Offer Price',
                           filled: true,
                           fillColor: MyColors.myGrey,
                           enabledBorder: customEnabledBorder,
                           focusedBorder: customFocusedBorder,
                         ),
                       ),
                     ),
                     SizedBox(height: 10),
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
                             "Add Product",
                             style: TextStyle(fontSize: 18),
                           )),
                     ),
                   ],
                 ),
               ),
             ),
           ),
    );
  }
}
