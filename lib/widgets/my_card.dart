import 'package:flutter/material.dart';
import 'package:xpense_flutter_app/utils/constants.dart';

class MyCard extends StatefulWidget {
  final String headline, subline;
  final Icon icon;
  final double height;
  const MyCard({
    super.key,
    required this.headline,
    required this.height,
    required this.icon,
    required this.subline,
  });

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        mouseCursor: MouseCursor.defer,
        child: Container(
          width: w! / 4,
          decoration: BoxDecoration(
            border: BoxBorder.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: widget.height/10,horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.icon,
                SizedBox(height: widget.height/15),
                Text(
                  widget.headline,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize:  w! / 50, fontWeight: FontWeight.bold,),
                ),
                SizedBox(height: widget.height/15),
                Text(
                  widget.subline,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize:  w! / 60, color: Colors.grey[400]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
