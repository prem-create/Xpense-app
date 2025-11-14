import 'package:flutter/material.dart';
import 'package:xpense_flutter_app/utils/constants.dart';

class MyExpendedCard extends StatelessWidget {
  final String headline, subline;
  final Icon icon;
  final int height;
  const MyExpendedCard({
    super.key,
    required this.headline,
    required this.height,
    required this.icon,
    required this.subline,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        mouseCursor: MouseCursor.defer,
        child: Expanded(
          child: Container(
            height: height.toDouble(),
            width: w! / 4,
            decoration: BoxDecoration(
              border: BoxBorder.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon,
                  SizedBox(height: 30),
                  Text(
                    headline,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Text(
                    subline,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.grey[400]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
