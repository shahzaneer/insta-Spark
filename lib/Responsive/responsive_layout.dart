import 'package:flutter/material.dart';
import 'package:insta_spark/Utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  const ResponsiveLayout(
      {super.key,
      required this.mobileScreenLayout,
      required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth >= Dimensions.webScreenSize) {
          return webScreenLayout;
        } 
        else {
          return mobileScreenLayout;
        }
      }),
    );
  }
}
