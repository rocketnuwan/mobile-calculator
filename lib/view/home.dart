import 'package:calculator/provider/cal_provider.dart';
import 'package:calculator/provider/color_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isckeck = false;
  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.of(context).size;

    return Consumer<ColorProvider>(
      builder: (context, valuec, child) {
        return Scaffold(
          backgroundColor: valuec.kgray,
          body: Stack(
            children: [
              Positioned(
                top: 20,
                left: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Switch(
                        value: valuec.isDark,
                        onChanged: (stste) {
                          valuec.setTheam(stste);
                          valuec.setColor();
                        },
                      ),
                    ),
                    Text(
                      "Change Your Theme",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: valuec.kbluelight,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  width: windowSize.width,
                  height: windowSize.height,
                  child: Consumer<CalProvider>(
                    builder: (context, value, child) {
                      return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 50,
                            ),
                            alignment: Alignment.centerRight,
                            height: windowSize.height * 0.4,
                            width: windowSize.width,
                            child: Text(
                              value.getresult.toString(),
                              style: TextStyle(
                                  fontSize: 74,
                                  fontWeight: FontWeight.w500,
                                  color: valuec.mwhite),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 15),
                            height: windowSize.height * 0.6,
                            width: windowSize.width,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: windowSize.width,
                                  child: SizedBox(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: ([
                                            CustomButton(
                                              colorButton: valuec.kwhite,
                                              colorPerss: valuec.kblueDark,
                                              text: "AC",
                                              colorText: valuec.kgrayDark,
                                              function: () {
                                                value.setClear();
                                              },
                                            ),
                                            CustomButton(
                                              colorButton: valuec.kwhite,
                                              colorPerss: valuec.kblueDark,
                                              function: () {
                                                value.setClearx();
                                              },
                                              text: "X",
                                              colorText: valuec.kgrayDark,
                                            ),
                                            CustomButton(
                                              colorText: valuec.kblue,
                                              colorPerss: valuec.kblueDark,
                                              function: () {
                                                value.setCal("/");
                                              },
                                              text: "/",
                                              colorButton: valuec.kbluelight,
                                            ),
                                            CustomButton(
                                              colorText: valuec.kblue,
                                              colorPerss: valuec.kblueDark,
                                              function: () {
                                                value.setCal("*");
                                              },
                                              text: "*",
                                              colorButton: valuec.kbluelight,
                                            ),
                                          ]),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: ([
                                            CustomButton(
                                              colorButton: valuec.kwhite,
                                              colorText: valuec.kblue,
                                              colorPerss: valuec.kblueDark,
                                              function: () {
                                                value.setNumber(7);
                                              },
                                              text: "7",
                                            ),
                                            CustomButton(
                                              colorButton: valuec.kwhite,
                                              colorText: valuec.kblue,
                                              colorPerss: valuec.kblueDark,
                                              text: "8",
                                              function: () {
                                                value.setNumber(8);
                                              },
                                            ),
                                            CustomButton(
                                              colorButton: valuec.kwhite,
                                              colorText: valuec.kblue,
                                              colorPerss: valuec.kblueDark,
                                              text: "9",
                                              function: () {
                                                value.setNumber(9);
                                              },
                                            ),
                                            CustomButton(
                                              colorText: valuec.kblue,
                                              colorPerss: valuec.kblueDark,
                                              text: "-",
                                              colorButton: valuec.kbluelight,
                                              function: () {
                                                value.setCal("-");
                                              },
                                            ),
                                          ]),
                                        ),
                                        SizedBox(
                                          height: windowSize.height * 0.6 * 0.5,
                                          child: Row(
                                            children: ([
                                              SizedBox(
                                                width: windowSize.width * 0.77,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: ([
                                                        CustomButton(
                                                          colorButton:
                                                              valuec.kwhite,
                                                          colorText:
                                                              valuec.kblue,
                                                          colorPerss:
                                                              valuec.kblueDark,
                                                          text: "4",
                                                          function: () {
                                                            value.setNumber(4);
                                                          },
                                                        ),
                                                        CustomButton(
                                                          colorButton:
                                                              valuec.kwhite,
                                                          colorText:
                                                              valuec.kblue,
                                                          colorPerss:
                                                              valuec.kblueDark,
                                                          text: "5",
                                                          function: () {
                                                            value.setNumber(5);
                                                          },
                                                        ),
                                                        CustomButton(
                                                          colorButton:
                                                              valuec.kwhite,
                                                          colorText:
                                                              valuec.kblue,
                                                          colorPerss:
                                                              valuec.kblueDark,
                                                          text: "6",
                                                          function: () {
                                                            value.setNumber(6);
                                                          },
                                                        ),
                                                      ]),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: ([
                                                        CustomButton(
                                                          colorButton:
                                                              valuec.kwhite,
                                                          colorText:
                                                              valuec.kblue,
                                                          colorPerss:
                                                              valuec.kblueDark,
                                                          text: "1",
                                                          function: () {
                                                            value.setNumber(1);
                                                          },
                                                        ),
                                                        CustomButton(
                                                          colorButton:
                                                              valuec.kwhite,
                                                          colorText:
                                                              valuec.kblue,
                                                          colorPerss:
                                                              valuec.kblueDark,
                                                          text: "2",
                                                          function: () {
                                                            value.setNumber(2);
                                                          },
                                                        ),
                                                        CustomButton(
                                                          colorButton:
                                                              valuec.kwhite,
                                                          colorText:
                                                              valuec.kblue,
                                                          colorPerss:
                                                              valuec.kblueDark,
                                                          text: "3",
                                                          function: () {
                                                            value.setNumber(3);
                                                          },
                                                        ),
                                                      ]),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: ([
                                                        CustomButton(
                                                          colorButton:
                                                              valuec.kwhite,
                                                          colorText:
                                                              valuec.kblue,
                                                          colorPerss:
                                                              valuec.kblueDark,
                                                          function: () {
                                                            value.setNumber(0);
                                                          },
                                                          text: "0",
                                                          buttonWidth: 160,
                                                        ),
                                                        CustomButton(
                                                          colorButton:
                                                              valuec.kwhite,
                                                          colorText:
                                                              valuec.kblue,
                                                          colorPerss:
                                                              valuec.kblueDark,
                                                          text: ".",
                                                          function: () {
                                                            value.setDot();
                                                          },
                                                        ),
                                                      ]),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: windowSize.width * 0.23,
                                                height: double.infinity,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: ([
                                                    CustomButton(
                                                        colorText: valuec.kblue,
                                                        colorPerss:
                                                            valuec.kblueDark,
                                                        function: () {
                                                          value.setCal("+");
                                                        },
                                                        text: "+",
                                                        buttonHeight: 105,
                                                        colorButton:
                                                            valuec.kbluelight),
                                                    CustomButton(
                                                      colorButton: valuec.kblue,
                                                      function: () {
                                                        value.equal();
                                                      },
                                                      text: "=",
                                                      buttonHeight: 105,
                                                      colorText: valuec.kwhite,
                                                      colorPerss: valuec.kwhite,
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                            ]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  )),
            ],
          ),
        );
      },
    );
  }
}

class CustomButton extends StatefulWidget {
  CustomButton({
    Key? key,
    required this.text,
    //this.colorButton = kwhite,
    required this.colorButton,
    //this.colorText = kblue,
    required this.colorText,
    this.buttonHeight = 65,
    this.buttonWidth = 65,
    //this.colorPerss = kblueDark,
    required this.colorPerss,
    required this.function,
  }) : super(key: key);
  final String text;
  final Color colorText;
  final Color colorButton;
  final double buttonWidth;
  final double buttonHeight;
  final Color colorPerss;
  final Function() function;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.function,
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
