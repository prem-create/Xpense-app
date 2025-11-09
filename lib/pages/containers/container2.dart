import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_app/utils/colors.dart';
import 'package:xpense_flutter_app/utils/constants.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer(),
      tablet: (BuildContext context) => tabletContainer(),
      desktop: (BuildContext context) => desktopContainer(),
    );
  }
}

// ================== MOBILE ==================
Widget mobileContainer() {
  Widget companyLogo(String companyLogo) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 160,
        height: 36,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(companyLogo)),
        ),
      ),
    );
  }

  return Container(
    height: 500,
    width: double.infinity,
    color: AppColors.primary,
    child: Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: w! / 20,
                right: w! / 20,
                child: Container(
                  height: 190,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(dashboard),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              companyLogo(fb),
              companyLogo(google),
              companyLogo(cocaCola),
              companyLogo(linkedin),
              companyLogo(samsung),
            ],
          ),
        ),
      ],
    ),
  );
}

// ================== TABLET ==================
Widget tabletContainer() {
  Widget companyLogo(String companyLogo) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 160,
        height: 36,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(companyLogo)),
        ),
      ),
    );
  }

  return Container(
    height: 650,
    width: double.infinity,
    color: AppColors.primary,
    child: Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                right: -20,
                top: -20,
                child: Container(
                  width: 300,
                  height: 300,

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(vector1),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -30,
                bottom: -10,
                child: Container(
                  width: 300,
                  height: 300,

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(vector2),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: w! / 20,
                right: w! / 20,
                child: Container(
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(dashboard),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            children: [
              companyLogo(fb),
              companyLogo(google),
              companyLogo(cocaCola),
              companyLogo(linkedin),
              companyLogo(samsung),
            ],
          ),
        ),
      ],
    ),
  );
}

// ================== DESKTOP ==================
Widget desktopContainer() {
  Widget companyLogo(String companyLogo) {
    return Container(
      width: 160,
      height: 36,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(companyLogo)),
      ),
    );
  }

  return Container(
    height: 900,
    width: double.infinity,
    color: AppColors.primary,
    child: Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                right: -20,
                top: -20,
                child: Container(
                  width: 500,
                  height: 500,

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(vector1),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -30,
                bottom: -10,
                child: Container(
                  width: 500,
                  height: 500,

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(vector2),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: w! / 20,
                right: w! / 20,
                child: Container(
                  height: 700,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(dashboard),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              companyLogo(fb),
              companyLogo(google),
              companyLogo(cocaCola),
              companyLogo(linkedin),
              companyLogo(samsung),
            ],
          ),
        ),
      ],
    ),
  );
}
