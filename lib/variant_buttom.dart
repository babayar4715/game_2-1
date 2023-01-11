import 'package:flutter/material.dart';
import 'package:flutter_application_37_game_full/components/colors.dart';
import 'package:flutter_application_37_game_full/model/suroo.dart';

class Tortkcnopka extends StatelessWidget {
  const Tortkcnopka({
    Key? key,
    required this.jooptor,
    required this.onTap,
  }) : super(key: key);
  final List<Joop> jooptor;
  final Function(bool) onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 150,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: Appcolors.greyy,
            child: InkWell(
              onTap: () {
                onTap(jooptor[index].isTrue);
              },
              child: Center(
                child: Text(
                  jooptor[index].text,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
