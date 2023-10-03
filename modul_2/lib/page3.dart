import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: [
        FlutterLogo(),Image.asset("upn.png"),
        FlutterLogo(),Image.asset("upn.png"),
        FlutterLogo(),Image.asset("upn.png")
      ],
    );
  }
}
