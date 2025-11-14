import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_app/utils/constants.dart';
import 'package:xpense_flutter_app/widgets/common_container.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer5(),
      tablet: (BuildContext context) => tabletContainer5(),
      desktop: (BuildContext context) => desktopContainer5(),
    );
  }

  // ================== MOBILE ==================
  Widget mobileContainer5() {
    return commonContainerMobile(
      'Use anytime',
      'Use anytime when you need',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      container5,
    );
  }

  // ================== TABLET ==================
  Widget tabletContainer5() {
    return commonContainerTablet(
      'Use anytime',
      'Use anytime when you need',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      container5,
    );
  }

  // ================== DESKTOP ==================
  Widget desktopContainer5() {
    return Column(
      children: [
        commonContainerDesktop(
          'Use anytime',
          'Use anytime when you need',
          'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
          container5,
          false,
        ),
      ],
    );
  }
}
