import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  bool isDark = false;
  Color mwhite = const Color(0xff424242);
  Color kwhite = const Color(0xffFFFFFF);
  Color kblue = const Color(0xff109DFF);
  Color kblueDark = const Color(0xff38B9FF);
  Color kgray = Colors.grey;
  Color kgrayDark = const Color(0xff858585);
  Color kbluelight = const Color(0xffADE2FF);

  void setColor() {
    if (isDark) {
      mwhite = const Color(0xffFFFFFF);
      kwhite = const Color(0xff303136);
      kblue = const Color(0xff109DFF);
      kblueDark = const Color(0xff38B9FF);
      kgray = const Color(0xff17181A);
      kgrayDark = const Color(0xff616161);
      kbluelight = const Color(0xff005DB2);
    } else {
      mwhite = const Color(0xff424242);
      kwhite = const Color(0xffFFFFFF);
      kblue = const Color(0xff109DFF);
      kblueDark = const Color(0xff38B9FF);
      kgray = Colors.grey;
      kgrayDark = const Color(0xff858585);
      kbluelight = const Color(0xffADE2FF);
    }
  }

  void setTheam(bool x) {
    isDark = x;
    notifyListeners();
  }
}
