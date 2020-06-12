import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'coolors.dart';
import 'header.dart';
import 'middle.dart';
import 'footer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: VStack([
        HeaderScreen(),
        if (context.isMobile) IntroductionWidget().p12(),
        MiddleScreen(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}
