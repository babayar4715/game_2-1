import 'package:flutter/material.dart';
import 'package:flutter_application_37_game_full/components/colors.dart';

class SliderWdiget extends StatelessWidget {
  const SliderWdiget({
    Key? key,
    required this.value,
  }) : super(key: key);
  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SliderTheme(
        data: SliderThemeData(
          overlayShape: SliderComponentShape.noOverlay,
          thumbShape: SliderComponentShape.noThumb,
          activeTrackColor: Colors.red,
        ),
        child: Slider(
          inactiveColor: Appcolors.inactive,
          activeColor: Appcolors.actip,
          value: value.toDouble(),
          max: 8,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
