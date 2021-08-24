import 'package:flutter/material.dart';
import 'package:indojek/common/my_colors.dart';
import 'package:indojek/common/my_font_size.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
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
      return Row(
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
      );
    }

    Widget balance() {
      return Container(
        height: 150,
        decoration: BoxDecoration(
          color: MyColors.blue,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Row(
          children: [
            // Container(
            //   height: 20,
            //   width: 5,
            //   decoration: BoxDecoration(
            //     color: MyColors.softGrey,
            //     borderRadius: BorderRadius.circular(20)
            //   ),
            // ),
            Container(
              height: 110,
              width: 180,
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              // child: ,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.green,
        title: tabBar(),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          searchBox(),
          SizedBox(height: 20),
          balance(),
        ],
      ),
    );
  }
}
