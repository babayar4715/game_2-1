import 'package:flutter/material.dart';
import 'package:flutter_application_37_game_full/components/app_test.dart';
import 'package:flutter_application_37_game_full/components/colors.dart';
import 'package:flutter_application_37_game_full/model/suroo.dart';

class Continents {
  const Continents({
    required this.icon,
    required this.name,
    required this.color,
    this.suroo,
  });
  final String name;
  final String icon;
  final Color color;
  final List<Suroo>? suroo;
}

final africa = Continents(
  color: const Color(0xfffeef35),
  icon: 'africa',
  name: Apptext.africa,
  suroo: africaQ,
);
const asia = Continents(
  color: Color(0xfffe8181),
  icon: 'asia',
  name: Apptext.asia,
);
const australia = Continents(
  color: Color(0xff6bf783),
  icon: 'australia',
  name: Apptext.australia,
);
const europe = Continents(
  color: Color(0xff81a2fe),
  icon: 'europe',
  name: Apptext.europa,
);
const northAmerica = Continents(
  color: Color(0xfffeb100),
  icon: 'north_america',
  name: Apptext.northAmerica,
);
const southamerica = Continents(
  color: Color(0xffe5aae5),
  icon: 'south_america',
  name: Apptext.southAmerica,
);

List continents = <Continents>[
  europe,
  asia,
  northAmerica,
  southamerica,
  africa,
  australia,
];
