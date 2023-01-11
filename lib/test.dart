import 'package:flutter/material.dart';
import 'package:flutter_application_37_game_full/components/app_test.dart';
import 'package:flutter_application_37_game_full/components/colors.dart';
import 'package:flutter_application_37_game_full/model/continents.dart';
import 'package:flutter_application_37_game_full/continents/continents.dart';
import 'package:flutter_application_37_game_full/test_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

// List continents = <String>[
//   'africa',
//   'asia',
//   'australia',
//   'europe',
//   'north_america',
//   'south_america',
// ];
List continents = <Continents>[
  europe,
  asia,
  northAmerica,
  southamerica,
  africa,
  australia,
];

class Test extends StatelessWidget {
  const Test({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.bgColor,
      appBar: AppBar(
        title: const Text(
          Apptext.getTitle,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Appcolors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Appcolors.black,
            ),
          ),
        ],
        backgroundColor: Appcolors.bgColor,
      ),
      body: Column(
        children: [
          const SizedBox(height: 5),
          const Divider(
            height: 4,
            color: Appcolors.black,
            indent: 30,
            endIndent: 30,
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: continents.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                final item = continents[index];
                return ContinentsDArt(
                  item: continents[index],
                  onTap: () {
                    if (continents[index].suroo != null) {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => TestPage(
                            item: continents[index],
                            suroo: continents[index].suroo!,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Sorry this continents question is not ready!!!',
                          ),
                        ),
                      );
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
