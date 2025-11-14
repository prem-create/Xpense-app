import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_app/utils/constants.dart';
import 'package:xpense_flutter_app/widgets/my_card.dart';

class Container6 extends StatefulWidget {
  const Container6({super.key});

  @override
  State<Container6> createState() => _Container6State();
}

class _Container6State extends State<Container6> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(desktop: (context) => desktopContainer6());
  }
}

Widget desktopContainer6() {
  return Container(
    color: Colors.white,
    child: Column(
      children: [
        SizedBox(height: 60),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: w! / 3,
                child: Text(
                  'The Product we work with.',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ),
              SizedBox(
                width: w! / 3,
                child: Text(
                  'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim aumsan nisi, tincidunt vel. Enim ipsum, at quis ullamcorper eget ut.',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.grey[400], fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 60),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyExpendedCard(
                headline: 'Cross platform',
                height: 250,
                icon: Icon(Icons.devices, color: Colors.orange),
                subline: 'Elit esse cillum dolore eu fugiat nulla pariatur',
              ),
              MyExpendedCard(
                headline: 'Cloud Server',
                height: 250,
                icon: Icon(Icons.cloud, color: Colors.purple),
                subline: 'Elit esse cillum dolore eu fugiat nulla pariatur',
              ),
              MyExpendedCard(
                headline: 'Pure JavaScript',
                height: 250,
                icon: Icon(Icons.backpack_outlined, color: Colors.blue),
                subline: 'Elit esse cillum dolore eu fugiat nulla pariatur',
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
