import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container7 extends StatelessWidget {
  const Container7({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => desktopContainer7(),
    );
  }
}

Widget desktopContainer7(){

  return Container();
}