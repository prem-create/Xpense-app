import 'package:flutter/material.dart';
import 'package:xpense_flutter_app/utils/colors.dart';
import 'package:xpense_flutter_app/utils/constants.dart';

// ================== MOBILE ==================
Widget commonContainerMobile(String s1, s2, s3, image) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          s1.toUpperCase(),
          style: TextStyle(color: Colors.grey[400], fontSize: 16),
        ),
        SizedBox(height: 10),
        Text(
          s2,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: w! / 10,
            height: 1.1,
          ),
        ),
        SizedBox(height: 10),
        Text(
          s3,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey[400], fontSize: 16),
        ),
        SizedBox(height: 10),
        TextButton.icon(
          onPressed: () {},
          label: Text('Learn more', style: TextStyle(color: AppColors.primary)),
          icon: Icon(Icons.arrow_forward, color: AppColors.primary),
          iconAlignment: IconAlignment.end,
        ),
      ],
    ),
  );
}

// ================== TABLET ==================
Widget commonContainerTablet(String s1, s2, s3, image) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Column(
      children: [
        Container(
          height: 450,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(height: 50),
        Text(
          s1.toUpperCase(),
          style: TextStyle(color: Colors.grey[400], fontSize: 16),
        ),
        SizedBox(height: 10),
        Text(
          s2,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: w! / 10,
            height: 1.1,
          ),
        ),
        SizedBox(height: 10),
        Text(
          s3,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey[400], fontSize: 16),
        ),
        SizedBox(height: 10),
        TextButton.icon(
          onPressed: () {},
          label: Text('Learn more', style: TextStyle(color: AppColors.primary)),
          icon: Icon(Icons.arrow_forward, color: AppColors.primary),
          iconAlignment: IconAlignment.end,
        ),
      ],
    ),
  );
}

// ================== DESKTOP ==================
Widget commonContainerDesktop(String s1, s2, s3, image, bool isImageLeft) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Row(
      children: [
        isImageLeft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            : Container(),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                s1.toUpperCase(),
                style: TextStyle(color: Colors.grey[400], fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                s2,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: w! / 15,
                  height: 1.3,
                ),
              ),
              SizedBox(height: 10),
              Text(s3, style: TextStyle(color: Colors.grey[400], fontSize: 16)),
              SizedBox(height: 10),
              TextButton.icon(
                onPressed: () {},
                label: Text(
                  'Learn more',
                  style: TextStyle(color: AppColors.primary),
                ),
                icon: Icon(Icons.arrow_forward, color: AppColors.primary),
                iconAlignment: IconAlignment.end,
              ),
            ],
          ),
        ),

        !isImageLeft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    ),
  );
}
