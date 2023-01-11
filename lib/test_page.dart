import 'package:flutter/material.dart';
import 'package:flutter_application_37_game_full/appBar_title.dart';
import 'package:flutter_application_37_game_full/components/colors.dart';
import 'package:flutter_application_37_game_full/model/continents.dart';
import 'package:flutter_application_37_game_full/model/suroo.dart';
import 'package:flutter_application_37_game_full/slider_Wdiget.dart';
import 'package:flutter_application_37_game_full/variant_buttom.dart';

class TestPage extends StatefulWidget {
  const TestPage({
    Key? key,
    required this.suroo,
    required this.item,
  }) : super(key: key);
  final List<Suroo> suroo;
  final Continents item;

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;
  int tuurajooptor = 0;
  int katajooptor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.bgColor,
      appBar: AppBar(
        foregroundColor: Appcolors.black,
        backgroundColor: Appcolors.bgColor,
        title: titleWidget(
          item: widget.item,
          tuurajooptor: tuurajooptor,
          katajooptor: katajooptor,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          SliderWdiget(value: index),
          const SizedBox(height: 20),
          Text(
            widget.suroo[index].text,
            style: const TextStyle(fontSize: 30),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                  'assets/africaHp/${widget.suroo[index].image}.jpg'),
            ),
          ),
          Tortkcnopka(
            jooptor: widget.suroo[index].jooptor,
            onTap: (isTrue) {
              if (index + 1 == widget.suroo.length) {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Result of test'),
                    content: Text(
                      ' Right answers : $tuurajooptor \n Wrong answers: $katajooptor',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                            katajooptor = 0;
                            tuurajooptor = 0;
                          });
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Resert',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                if (isTrue == true) {
                  tuurajooptor++;
                } else {
                  katajooptor++;
                }

                setState(() {
                  index++;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
