import 'package:demoproject/Theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final void Function(String?) onSubmit;
  final bool enabled;
  final String hint;
  String? value;

  SearchBox(
      {Key? key,
      required this.onSubmit,
      this.enabled = true,
      required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Icon(
                    Icons.search_rounded,
                    size: 30,
                    color: MyColors.myGreyMid3,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        readOnly: enabled,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.search,
                        decoration: InputDecoration(
                            hintText: hint, border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: MyColors.myAppbarColorDark,
          ),
          child: Image.asset("assets/filter.png"),
        )
      ],
    );
  }
}
