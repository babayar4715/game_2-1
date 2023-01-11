import 'package:flutter/material.dart';
import 'package:flutter_application_37_game_full/components/colors.dart';
import 'package:flutter_application_37_game_full/model/continents.dart';
import 'package:flutter_application_37_game_full/model/suroo.dart';

class titleWidget extends StatelessWidget {
  const titleWidget({
    Key? key,
    required this.tuurajooptor,
    required this.katajooptor,
    required this.item,
  }) : super(key: key);
  final Continents item;
  final int tuurajooptor;
  final int katajooptor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          color: Appcolors.bgColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 8.0,
            ),
            child: Row(
              children: [
                Text(
                  '$tuurajooptor',
                  style: TextStyle(color: Appcolors.green, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "${africaQ.length}",
                    style: const TextStyle(fontSize: 22),
                  ),
                ),
                Text(
                  '$katajooptor',
                  style: TextStyle(color: Appcolors.reddd, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        Text(
          item.name,
          style: TextStyle(fontSize: 22),
        ),
        Row(
          children: [
            SizedBox(
              width: 70,
              height: 30,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return const Icon(Icons.favorite, color: Appcolors.reddd);
                }),
              ),
            ),
            InkWell(onTap: () {}, child: const Icon(Icons.more_vert)),
          ],
        ),
      ],
    );
  }

  // @override
  // void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  //   super.debugFillProperties(properties);
  //   properties.add(IntProperty('katajooptor', katajooptor));
  // }
}
