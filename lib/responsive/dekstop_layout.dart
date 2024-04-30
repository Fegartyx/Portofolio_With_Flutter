import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:portofolio/helper/text_scale_size.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 250,
                  // height: 150,
                  // padding: EdgeInsets.symmetric(vertical: 60, horizontal: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(fontSize: 50),
                      ),
                      Text(
                        "Welcome to my web portofolio",
                        maxLines: 2,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/ui/ui_flat_rectangle.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 250,
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Stack(
                      //   alignment: Alignment.center,
                      //   children: [
                      //     Image.asset(
                      //       "assets/ui/ui_flat_main_menu.png",
                      //       height: 100,
                      //     ),
                      //     Image.asset(
                      //       "assets/bg_remove_red.png",
                      //       width: 50,
                      //     ),
                      //   ],
                      // ),
                      Image.asset(
                        "assets/bg_remove_red.png",
                        width: 100,
                      ),
                      Text(
                        "Muhammad",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Ferary",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Developer",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/ui/ui_flat_main_menu.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width / 3.5,
              height: MediaQuery.sizeOf(context).height / 2.5,
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.sizeOf(context).width > 1400 ? 55 : 95,
                  horizontal: 40),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/ui/ui_flat_main_menu.png"),
                  // fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "Bio",
                    style: TextStyle(
                        fontSize: MediaQuery.sizeOf(context).width / 30),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Born in the united states 1991, always passionate about video games and drawing, i ended up making my passion my job",
                    textAlign: TextAlign.center,
                    maxLines: 5,
                    style: TextStyle(
                        fontSize: MediaQuery.sizeOf(context).width / 70,
                        wordSpacing: 5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
