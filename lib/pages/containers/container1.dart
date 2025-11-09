import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_app/utils/colors.dart';
import 'package:xpense_flutter_app/utils/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer1(),
      tablet: (BuildContext context) => tabletContainer1(),
      desktop: (BuildContext context) => desktopContainer1(),
    );
  }

  // ================== MOBILE ==================
  Widget mobileContainer1() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          //image
          Container(
            height: h! / 1.6,
            width: w! / 1.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(illustration1),
                fit: BoxFit.contain,
              ),
            ),
          ),
          //rest
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Track your\nExpenses to\nSaveMoney',
                style: TextStyle(
                  fontSize: w! / 8,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Helps you to organize your income and expenses',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[400], fontSize: w!/30),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 45,
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(AppColors.primary),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.arrow_drop_down),
                  iconAlignment: IconAlignment.end,
                  label: Text('Try free Demo'),
                ),
              ),
      
              SizedBox(height: 20),
              Text(
                'Web, iOs and Android',
                style: TextStyle(color: Colors.grey[400], fontSize:  w!/30),
              ),
            ],
          ),
        ],
      ),
    );
  }

// ================== TABLET ==================
  Widget tabletContainer1() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          //image
          Container(
            height: h! / 1.6,
            width: w! / 1.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(illustration1),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 30),
          //rest
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Track your\nExpenses to\nSaveMoney',
                style: TextStyle(
                  fontSize: w! / 9.0,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Helps you to organize your income and expenses',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[400], fontSize: w!/40),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w! / 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            AppColors.primary,
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.arrow_drop_down),
                        iconAlignment: IconAlignment.end,
                        label: Text('Try free Demo'),
                      ),
                    ),

                    SizedBox(height: 20),
                    Text(
                      '— Web, iOs and Android',
                      style: TextStyle(color: Colors.grey[400], fontSize: w!/40),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ================== DESKTOP ==================
  Widget desktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: h! / 30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track your\nExpenses to\nSaveMoney',
                  style: TextStyle(
                    fontSize: w! / 20,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Helps you to organize your income and expenses',
                  style: TextStyle(color: Colors.grey[400], fontSize: w! / 80),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            AppColors.primary,
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.arrow_drop_down),
                        iconAlignment: IconAlignment.end,
                        label: Text('Try free Demo'),
                      ),
                    ),

                    SizedBox(width: 20),
                    Text(
                      '— Web, iOs and Android',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: w! / 80,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 478,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(illustration1),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
