import 'package:flutter/material.dart';
import 'package:indojek/common/my_colors.dart';
import 'package:indojek/common/my_font_size.dart';
import 'package:indojek/common/my_style.dart';
import 'package:indojek/ui/widgets/card_goclub.dart';
import 'package:indojek/ui/widgets/card_info.dart';
import 'package:indojek/ui/widgets/custom_button_icon.dart';
import 'package:indojek/ui/widgets/custom_card.dart';
import 'package:indojek/ui/widgets/nav_bottom.dart';
import 'package:indojek/ui/widgets/subtitle.dart';
import 'package:indojek/ui/widgets/scroll_brush.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  var _scrollController = ScrollController();

  List<bool> tabBarBadgeList = [
    false,
    false,
    false,
    true,
  ];

  List tabBarList = [
    "Beranda",
    "Promo",
    "Pesanan",
    "Chat",
  ];

  int tabBarIndex = 0;

  int balanceBalance = 0;

  bool isBrush = false;

  bool isCollapseNavBottom = true;

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels > 0) {
        isBrush = true;
        setState(() {});
      } else {
        isBrush = false;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget tabBarItem(int index) {
      return Expanded(
        child: Stack(
          children: [
            Container(
                margin: EdgeInsets.all(5),
                height: double.infinity,
                decoration: BoxDecoration(
                    color: (tabBarIndex == index)
                        ? MyColors.white
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(100)),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      tabBarIndex = index;
                    });
                  },
                  child: Center(
                    child: Text(
                      tabBarList[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: (tabBarIndex == index)
                              ? MyColors.darkGreen
                              : MyColors.white,
                          fontSize: MyFontSize.medium1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
            if (tabBarBadgeList[index])
              Align(
                alignment: Alignment.topRight,
                child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: MyColors.red,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1.5, color: MyColors.white)),
                    child: Center(
                      child: Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    )),
              )
          ],
        ),
      );
    }

    Widget tabBar() {
      return Container(
        margin: EdgeInsets.only(bottom: 15),
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            color: MyColors.darkGreen,
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            tabBarItem(0),
            tabBarItem(1),
            tabBarItem(2),
            tabBarItem(3),
          ],
        ),
      );
    }

    Widget searchBox() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  decoration: BoxDecoration(
                      color: MyColors.whiteL2,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 1.5, color: MyColors.softGrey)),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: MyColors.blackText, size: 40),
                      SizedBox(width: 10),
                      Expanded(
                          child: Text(
                        "Cari layanan, makanan, & tujuan",
                        style: TextStyle(
                            color: MyColors.grey, fontSize: MyFontSize.medium2),
                      ))
                    ],
                  )),
            ),
            SizedBox(width: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: Image.network(
                "https://images.unsplash.com/photo-1464746133101-a2c3f88e0dd9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1454&q=80",
                height: 55,
                width: 55,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      );
    }

    Widget balance() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 130,
          decoration: BoxDecoration(
              color: MyColors.blue, borderRadius: BorderRadius.circular(25)),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    2,
                    (index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                      height: 16,
                      width: 4,
                      decoration: BoxDecoration(
                          color: (balanceBalance == index)
                              ? MyColors.white
                              : MyColors.softGrey,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 90,
                width: 150,
                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "IndoPay",
                          style: TextStyle(
                            color: MyColors.blackText,
                            fontSize: MyFontSize.large1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Saldo masih kosong",
                      style: TextStyle(
                        color: MyColors.blackText,
                        fontSize: MyFontSize.medium1,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Klik buat isi",
                      style: TextStyle(
                        color: MyColors.green,
                        fontSize: MyFontSize.medium1,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: CustomButtonIcon(
                  action: () {},
                  iconPath: "assets/images/ic_bayar.png",
                  text: "Bayar",
                  fontColor: MyColors.white,
                  height: 33,
                  width: 33,
                  isBold: true,
                ),
              ),
              Expanded(
                child: CustomButtonIcon(
                  action: () {},
                  iconPath: "assets/images/ic_topup.png",
                  text: "Top Up",
                  fontColor: MyColors.white,
                  height: 33,
                  width: 33,
                  isBold: true,
                ),
              ),
              Expanded(
                child: CustomButtonIcon(
                  action: () {},
                  iconPath: "assets/images/ic_eksplor.png",
                  text: "Eksplor",
                  fontColor: MyColors.white,
                  height: 33,
                  width: 33,
                  isBold: true,
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.green,
        title: tabBar(),
      ),
      body: Stack(
        children: [
          ListView(
            controller: _scrollController,
            children: [
              SizedBox(height: 20),
              searchBox(),
              SizedBox(height: 20),
              balance(),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CardGoClub(),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Subtitle(
                    iconPath: "assets/images/ic_indoshop.png",
                    iconText: "IndoPayBefore",
                    subtitle: "Pake IndoPayBefore di Tokopedia",
                    caption:
                        "Belanja & nikmati beragam promo cashback istimewa hingga Rp 1.7 juta untuk-mu~"),
              ),
              AspectRatio(
                aspectRatio: 1 / 1,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      5,
                      (index) => CardInfo(
                            imageUrl:
                                "https://instagram.fpnk3-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s640x640/232601526_1128119741009253_3934720074181160193_n.jpg?_nc_ht=instagram.fpnk3-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=kA8t4lB32eoAX9f4ZFZ&edm=ABfd0MgBAAAA&ccb=7-4&oh=8856a6e5d68df8a9d284ad91595c2ac1&oe=612C1F51&_nc_sid=7bff83",
                            title: "Hadiah dari IndoJek buat perjalananmu!",
                            caption:
                                "Nikmatin perjalanan aman dan hemat naik IndoJek/IndoCar. Diskon sampai Rp 76.000 pake kode INDOMERDEKA. Klik!",
                          )),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Subtitle(
                  iconPath: "assets/images/ic_indoride.png",
                  iconText: "IndoJek",
                  subtitle: "Promo merdeka buat kamu",
                  caption:
                      "Ada diskon dari IndoJek/IndoCar, paket hemat IndoSend Instant, dan diskon IndoPay di sini!",
                  prefWidget: CustomCard(
                      onTap: () {},
                      padding: EdgeInsets.zero,
                      bgColor: MyColors.softGreen,
                      shadow: false,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text("Lihat Semua",
                            style: TextStyle(
                                color: MyColors.darkGreen,
                                fontSize: MyFontSize.medium2,
                                fontWeight: FontWeight.bold)),
                      )),
                ),
              ),
              AspectRatio(
                aspectRatio: 1 / 1,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      5,
                      (index) => CardInfo(
                            imageUrl:
                                "https://instagram.fpnk3-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s640x640/152029080_3695746190532447_5223713296276946562_n.jpg?_nc_ht=instagram.fpnk3-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=3FuPos7xNroAX_gnIAZ&tn=l98pM2K9xgavbtBh&edm=APU89FABAAAA&ccb=7-4&oh=37666a9dc8029be7be863da4dc2d8052&oe=612C6FE7&_nc_sid=86f79a",
                            title: "Bongkar rahasia penjualan barang murah",
                            caption:
                                "Nikmatin perjalanan aman dan hemat naik IndoJek/IndoCar. Diskon sampai Rp 76.000 pake kode INDOMERDEKA. Klik!",
                          )),
                ),
              ),
              SizedBox(height: 120),
            ],
          ),
          if (isBrush)
          Align(alignment: Alignment.topCenter, child: ScrollBrush()),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: GestureDetector(
              onPanUpdate: (details) {
                if (details.delta.dy < 0) {
                  isCollapseNavBottom = false;
                  setState(() {});
                }

                if (details.delta.dy > 0) {
                  isCollapseNavBottom = true;
                  setState(() {});
                }
              },
              child: NavBottom(
                isCollapse: isCollapseNavBottom,
              )
            ),
          ),
        ],
      ),
    );
  }
}
