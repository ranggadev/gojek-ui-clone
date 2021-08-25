import 'package:flutter/material.dart';
import 'package:indojek/common/my_colors.dart';
import 'package:indojek/common/my_style.dart';
import 'package:indojek/ui/widgets/custom_button_icon.dart';
import 'package:indojek/ui/widgets/custom_card.dart';

class NavBottom extends StatelessWidget {
  final bool isCollapse;

  const NavBottom({Key? key, this.isCollapse = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navCollapse() {
      return Padding(
        padding: isCollapse ? EdgeInsets.all(30) : EdgeInsets.zero,
        child: IntrinsicHeight(
          child: CustomCard(
            padding: EdgeInsets.all(10),
            bgColor: MyColors.white,
            shadow: true,
            elevationY: 5,
            shadowBlur: 30,
            borderRadius: isCollapse
                ? BorderRadius.circular(1000)
                : BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
            child: Column(
              children: [
                CustomCard(
                    height: 6,
                    width: 40,
                    bgColor: MyColors.grey,
                    shadow: false),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 5),
                    Expanded(
                      child: CustomButtonIcon(
                        action: () {},
                        iconPath: "assets/images/ic_indoride.png",
                        text: "IndoRide",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Expanded(
                      child: CustomButtonIcon(
                        action: () {},
                        iconPath: "assets/images/ic_indocar.png",
                        text: "IndoCar",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Expanded(
                      child: CustomButtonIcon(
                        action: () {},
                        iconPath: "assets/images/ic_indofood.png",
                        text: "IndoFood",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Expanded(
                      child: CustomButtonIcon(
                        action: () {},
                        iconPath: "assets/images/ic_indosend.png",
                        text: "IndoSend",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    SizedBox(width: 5),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget navExpand() {
      return Padding(
        padding: isCollapse ? EdgeInsets.all(30) : EdgeInsets.zero,
        child: IntrinsicHeight(
          child: CustomCard(
            padding: EdgeInsets.all(10),
            bgColor: MyColors.white,
            shadow: true,
            elevationY: 5,
            shadowBlur: 30,
            borderRadius: isCollapse
                ? BorderRadius.circular(1000)
                : BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: CustomCard(
                        height: 6,
                        width: 40,
                        bgColor: MyColors.grey,
                        shadow: false),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Kesayanganmu",
                    textAlign: TextAlign.start,
                    style: MyStyle.textTitleBlack,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 5),
                      Expanded(
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/ic_indoride.png",
                          text: "IndoRide",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/ic_indocar.png",
                          text: "IndoCar",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/ic_indofood.png",
                          text: "IndoFood",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/ic_indosend.png",
                          text: "IndoSend",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Layanan lainnya",
                    textAlign: TextAlign.start,
                    style: MyStyle.textTitleBlack,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 5),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/ic_indoclub.png",
                          text: "IndoClub",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    "COVID-19 resource",
                    textAlign: TextAlign.start,
                    style: MyStyle.textTitleBlack,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 5),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/ic_indomed.png",
                          text: "IndoMed",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Food delivery and shopping",
                    textAlign: TextAlign.start,
                    style: MyStyle.textTitleBlack,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 5),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/ic_indofood.png",
                          text: "IndoFood",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/ic_indoshop.png",
                          text: "IndoShop",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/ic_indomart.png",
                          text: "IndoMart",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/ic_indomall.png",
                          text: "IndoMall",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Transport and Logistics",
                    textAlign: TextAlign.start,
                    style: MyStyle.textTitleBlack,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 5),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/ic_indoride.png",
                          text: "IndoRide",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/ic_indocar.png",
                          text: "IndoCar",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/ic_indobluebird.png",
                          text: "IndoBlueBird",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/ic_indosend.png",
                          text: "IndoSend",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
          ),
        ),
      );
    }

    return isCollapse ? navCollapse() : navExpand();
  }
}
