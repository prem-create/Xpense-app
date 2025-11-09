import 'package:flutter/material.dart';
import 'package:xpense_flutter_app/pages/containers/container1.dart';
import 'package:xpense_flutter_app/pages/containers/container2.dart';
import 'package:xpense_flutter_app/utils/constants.dart';
import 'package:xpense_flutter_app/widgets/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [NavBar(), Container1(), Container2()]),
      ),
    );
  }
}
