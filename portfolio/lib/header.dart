import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'coolors.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var namewidget = "Vedant\nDokania"
        .text
        .white
        .xl5
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return SafeArea(
      child: VxBox(
        child: VStack([
          ZStack([
            PictureWidget(),
            Row(
              children: <Widget>[
                VStack([
                  CustomAppBar().shimmer(
                    primaryColor: Coolers.accentColor,
                  ),
                  30.heightBox,
                  namewidget,
                  20.heightBox,
                  VxBox()
                      .color(Coolers.accentColor)
                      .size(60, 10)
                      .make()
                      .shimmer(primaryColor: Coolers.accentColor),
                  30.heightBox,
                  SocialAccounts(),
                ]).pSymmetric(
                  h: context.percentHeight * 1,
                  v: 32,
                ),
                60.widthBox,
                Expanded(
                  child: VxResponsive(
                    fallback: const Offstage(),
                    medium: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 40),
                    large: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 10),
                  ),
                ),
              ],
            ).w(context.screenWidth)
          ]),
        ]),
      )
          .size(context.screenWidth, context.percentHeight * 70)
          .color(Coolers.secondaryColor)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          "-Introduction".text.gray500.widest.size(15).extraBold.make(),
          5.heightBox,
          "@Flutter App Developer\nBtech Ec Engineer\nBVM College"
              .text
              .white
              .xl2
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          5.heightBox,
        ].vStack(),
        RaisedButton(
          onPressed: () {
            launch(
                "https://drive.google.com/open?id=19_QYrTFCUzEpYf33jbXdttQyTwIpF0Mm");
          },
          child: "Show Resume".text.white.xs.semiBold.make(),
          color: Coolers.accentColor,
          shape: Vx.roundedSm,
          hoverColor: Vx.purple700,
        ).h(50),
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      child: Center(
        child: Image.asset(
          "assets/images/IMG_2734.jpg",
          fit: BoxFit.cover,
          height: context.percentHeight * 70,
          width: context.percentWidth * 100,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolers.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.twitter,
        color: Colors.white,
      ).mdClick(() {
        launch("https://twitter.com/DokaniaVedant");
      }).make(),
      10.widthBox,
      Icon(
        AntDesign.facebook_square,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.facebook.com/vedant.dokania.5");
      }).make(),
      10.widthBox,
      Icon(
        AntDesign.linkedin_square,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.linkedin.com/in/vedant-dokania-533386169/");
      }).make(),
    ].hStack();
  }
}
