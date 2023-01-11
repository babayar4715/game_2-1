import 'package:flutter/material.dart';
import 'package:flutter_application_37_game_full/components/colors.dart';
import 'package:flutter_application_37_game_full/model/continents.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContinentsDArt extends StatelessWidget {
  const ContinentsDArt({Key? key, required this.item, this.onTap})
      : super(key: key);

  final Continents item;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Text(
              item.name,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Appcolors.red,
              ),
            ),
            Expanded(
              child: SvgPicture.asset(
                'assets/images/${item.icon}.svg',
                color: item.color,
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}

// Card ContinentsDArt(item) {
//   final void Function()? onTap;
//   return Card(
//     child: InkWell(
//       onTap: onTap,
//       child: Column(
//         children: [
//           Text(
//             item.name,
//             style: const TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.w700,
//               color: Appcolors.red,
//             ),
//           ),
//           Expanded(
//             child: SvgPicture.asset(
//               'assets/images/${item.icon}.svg',
//               color: item.color,
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
