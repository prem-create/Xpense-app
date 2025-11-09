import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_app/utils/constants.dart';
import 'package:xpense_flutter_app/widgets/common_container.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer4(),
      tablet: (BuildContext context) => tabletContainer4(),
      desktop: (BuildContext context) => desktopContainer4(),
    );
  }

  // ================== MOBILE ==================
  Widget mobileContainer4() {
    return commonContainerMobile(
      'free some cost',
      'Save cost for you and family',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      container4,
    );
  }

  // ================== TABLET ==================
  Widget tabletContainer4() {
    return commonContainerTablet(
      'free some cost',
      'Save cost for you and family',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      container4,
    );
  }

  // ================== DESKTOP ==================
  Widget desktopContainer4() {
    return commonContainerDesktop(
      'free some cost',
      'Save cost \nfor you and family',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      container4,
      true,
    );
  }
}
