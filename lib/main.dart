import 'package:flutter/material.dart';
import 'package:portofolio/responsive/dekstop_layout.dart';
import 'package:portofolio/responsive/mobile_layout.dart';
import 'package:portofolio/responsive/responsive_layout.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/responsive/tablet_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fegar Portofolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: GoogleFonts.pixelifySans().fontFamily,
      ),
      home: const ResponsiveLayout(
        desktopScaffold: DesktopLayout(),
        mobileScaffold: MobileLayout(),
        tabletScaffold: TabletLayout(),
      ),
    );
  }
}
