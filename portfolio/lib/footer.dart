import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio/coolors.dart';
import 'package:portfolio/header.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Got a project?\n Let's Discuss".text.center.white.xl2.make(),
              10.heightBox,
              "Phone -9725583036"
                  .text
                  .color(Coolers.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolers.accentColor)
                  .p16
                  .rounded
                  .make(),
              10.heightBox,
              "Email -vedantdokania2000@gmail.com"
                  .text
                  .color(Coolers.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolers.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Got a project?\n Let's Discuss".text.center.xl2.make(),
              10.widthBox,
              "Email -vedantdokania2000@gmail.com"
                  .text
                  .color(Coolers.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolers.accentColor)
                  .p16
                  .rounded
                  .make(),
              10.heightBox,
              "Phone-9725583036"
                  .text
                  .color(Coolers.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolers.accentColor)
                  .p16
                  .rounded
                  .make(),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 60).scale150().p16(),
        ),
        50.heightBox,
        CustomAppBar(),
        10.heightBox,
        "Thanks for Scrolling".richText.white.semiBold.withTextSpanChildren(
          [
            "That all folks".textSpan.gray500.make(),
          ],
        ).make(),
        10.heightBox,
        [
          "Made in India".text.red500.make(),
          10.widthBox,
          Icon(
            AntDesign.heart,
            color: Vx.red500,
            size: 14,
          ),
        ].hStack(crossAlignment: CrossAxisAlignment.center)
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
