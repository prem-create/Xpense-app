import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_app/utils/constants.dart';
import 'package:xpense_flutter_app/widgets/common_container.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer3(),
      tablet: (BuildContext context) => tabletContainer3(),
      desktop: (BuildContext context) => desktopContainer3(),
    );
  }

  // ================== MOBILE ==================
  Widget mobileContainer3() {
    return commonContainerMobile(
      'Alwalys online',
      'Real-time support with cloud',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      container3,
    );
  }

  // ================== TABLET ==================
  Widget tabletContainer3() {
    return commonContainerTablet(
      'Alwalys online',
      'Real-time support with cloud',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      container3,
    );
  }

  // ================== DESKTOP ==================
  Widget desktopContainer3() {
    return commonContainerDesktop(
      'Alwalys online',
      'Real-time support with cloud',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      container3,
      false,
    );
  }
}
