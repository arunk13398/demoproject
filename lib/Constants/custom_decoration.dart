import 'package:flutter/material.dart';
import '../Theme/theme.dart';
import '/Constants/my_colors.dart';

OutlineInputBorder customEnabledBorder=const OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(5.0)),
  borderSide: BorderSide(color:  MyColors.myAppbarColor, width: 1.2),
);
OutlineInputBorder customFocusedBorder=const OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(5.0)),
  borderSide: BorderSide(color:  MyColors.myAppbarColor, width: 1.6),
);
