import 'package:calculator/controller/btn_controller.dart';
import 'package:calculator/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String results = "0";

  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kgray,
        body: SizedBox(
          width: windowSize.width,
          height: windowSize.height,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerRight,
                height: windowSize.height * 0.4,
                width: windowSize.width,
                child: Text(
                  results,
                  style: TextStyle(
                      fontSize: 74, fontWeight: FontWeight.w500, color: mwhite),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 15),
                height: windowSize.height * 0.6,
                width: windowSize.width,
                child: Row(
                  children: [
                    SizedBox(
                      width: windowSize.width * 0.75,
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: ([
                                ElevatedButton(
                                  onPressed: () {
                                    results = "1000";
                                    setState(() {});
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: kwhite,
                                      elevation: 0,
                                      fixedSize: Size(65, 65),
                                      padding: const EdgeInsets.all(0),
                                      onPrimary: kblueDark,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                  child: Text(
                                    "AC",
                                    style: TextStyle(
                                        fontSize: 32, color: kgrayDark),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: kwhite,
                                      elevation: 0,
                                      fixedSize: Size(65, 65),
                                      padding: const EdgeInsets.all(0),
                                      onPrimary: kblueDark,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                  child: Text(
                                    "X",
                                    style: TextStyle(
                                        fontSize: 32, color: kgrayDark),
                                  ),
                                ),
                                CustomButton(
                                  text: "/",
                                  colorButton: kbluelight,
                                ),
                              ]),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: ([
                                CustomButton(
                                  text: "7",
                                ),
                                CustomButton(text: "8"),
                                CustomButton(text: "9"),
                              ]),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: ([
                                CustomButton(text: "4"),
                                CustomButton(text: "5"),
                                CustomButton(text: "6"),
                              ]),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: ([
                                CustomButton(text: "1"),
                                CustomButton(text: "2"),
                                CustomButton(text: "3"),
                              ]),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: ([
                                CustomButton(
                                  text: "0",
                                  buttonWidth: 160,
                                ),
                                CustomButton(text: "."),
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: windowSize.width * 0.25,
                      padding: const EdgeInsets.only(right: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: ([
                          CustomButton(
                              text: "*",
                              buttonWidth: 80,
                              colorButton: kbluelight),
                          CustomButton(
                              text: "-",
                              buttonWidth: 80,
                              colorButton: kbluelight),
                          CustomButton(
                              text: "+",
                              buttonHeight: 97.5,
                              buttonWidth: 80,
                              colorButton: kbluelight),
                          CustomButton(
                            text: "=",
                            buttonHeight: 97.5,
                            buttonWidth: 80,
                            colorButton: kblueDark,
                            colorText: kwhite,
                            colorPerss: kwhite,
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class CustomButton extends StatefulWidget {
  CustomButton({
    Key? key,
    required this.text,
    this.colorButton = kwhite,
    this.colorText = kblue,
    this.buttonHeight = 65,
    this.buttonWidth = 65,
    this.colorPerss = kblueDark,
    this.value2,
  }) : super(key: key);
  final String text;
  final Color colorText;
  final Color colorButton;
  final double buttonWidth;
  final double buttonHeight;
  final Color colorPerss;
  final String? value2;
  bool x = true;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {});
      },
      style: ElevatedButton.styleFrom(
          primary: widget.colorButton,
          elevation: 0,
          fixedSize: Size(widget.buttonWidth, widget.buttonHeight),
          padding: const EdgeInsets.all(0),
          onPrimary: widget.colorPerss,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      child: Text(
        widget.text,
        style: TextStyle(fontSize: 32, color: widget.colorText),
      ),
    );
  }
}
