class Suroo {
  const Suroo({
    required this.text,
    required this.image,
    required this.jooptor,
  });
  final String text;
  final String image;
  final List<Joop> jooptor;
}

class Joop {
  const Joop({
    required this.text,
    this.isTrue = false,
  });
  final String text;
  final bool isTrue;
}

List<Suroo> africaQ = [b1, b2, b3, b4, b5, b6, b7, b8, b9];

const b1 = Suroo(
  text: 'Accra',
  image: 'accra',
  jooptor: [
    Joop(text: 'Ggana', isTrue: true),
    Joop(text: 'Uganda'),
    Joop(text: 'Gabon'),
    Joop(text: 'Chad'),
  ],
);
const b2 = Suroo(
  text: 'Adis Abeba',
  image: 'adis_abeba',
  jooptor: [
    Joop(text: 'Tanzania'),
    Joop(text: 'Uganda'),
    Joop(text: 'Ephiopia', isTrue: true),
    Joop(text: 'Zambia'),
  ],
);
const b3 = Suroo(
  text: 'Algiers',
  image: 'Algiers',
  jooptor: [
    Joop(text: 'Ggana'),
    Joop(text: 'Algeria', isTrue: true),
    Joop(text: 'DR Kongo'),
    Joop(text: 'Mali'),
  ],
);
const b4 = Suroo(
  text: 'Anantanavery',
  image: 'anantanavery',
  jooptor: [
    Joop(text: 'Morocco'),
    Joop(text: 'Libya'),
    Joop(text: 'Sudan'),
    Joop(text: 'Madagaskar', isTrue: true),
  ],
);
const b5 = Suroo(
  text: 'Cairo',
  image: 'Cairo',
  jooptor: [
    Joop(text: 'Egypt', isTrue: true),
    Joop(text: 'Mali'),
    Joop(text: 'Niger'),
    Joop(text: 'Ethiopia'),
  ],
);
const b6 = Suroo(
  text: 'Johannesburg',
  image: 'Johannesburg_CBD',
  jooptor: [
    Joop(text: 'Tanzania'),
    Joop(text: 'South Africa', isTrue: true),
    Joop(text: 'Madagaskar'),
    Joop(text: 'Egypt'),
  ],
);
const b7 = Suroo(
  text: 'Kinshasa',
  image: 'kinshasa',
  jooptor: [
    Joop(text: 'Ggana'),
    Joop(text: 'Uganda'),
    Joop(text: 'DR Kongo', isTrue: true),
    Joop(text: 'Chad'),
  ],
);
const b8 = Suroo(
  text: 'Rabat',
  image: 'rabat',
  jooptor: [
    Joop(text: 'Somali'),
    Joop(text: 'Angola'),
    Joop(text: 'Morocco', isTrue: true),
    Joop(text: 'Zambia'),
  ],
);
const b9 = Suroo(
  text: 'Yaoundé',
  image: 'Yaoundé_1',
  jooptor: [
    Joop(text: 'Cameroon', isTrue: true),
    Joop(text: 'Angola'),
    Joop(text: 'Sudan'),
    Joop(text: 'Nigeria'),
  ],
);
