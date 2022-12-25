import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../Theme/theme.dart';

Widget getCategoryShimmer() {
  return Container(
    padding: EdgeInsets.all(15),
    child: Shimmer.fromColors(
      baseColor: MyColors.myGreyMid2,
      highlightColor: MyColors.myGreyMid,
      enabled: true,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 15,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 15,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget getProductShimmer() {
  return Container(
    padding: EdgeInsets.all(15),
    child: Shimmer.fromColors(
      baseColor: MyColors.myGreyMid2,
      highlightColor: MyColors.myGreyMid,
      enabled: true,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 5, right: 5),
            child: Container(
              height: 15,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 5, right: 5),
            child: Container(
              height: 15,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
