import 'package:choose_my_hobbies/footer.dart';
import 'package:choose_my_hobbies/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<String> availableHobbies = [
    'Football',
    'Basketball',
    'Volleyball',
    'Tennis',
    'Badminton',
    'Ping Pong',
    'Golf',
    'Rugby',
    'Handball',
    'Cyclisme',
    'Natation',
    'Aviron',
    'Equitation',
    'Escalade',
    'Ski',
    'Snowboard',
    'Squash',
    'Boxe',
    'Judo',
    'Taekwondo',
    'Karate',
    'Aikido',
    'Yoga',
    'Pilates',
    'Danse',
    'Cinéma',
    'Théâtre',
    'Musique',
    'Lecture',
    'Cuisine',
    'Peinture',
    'Photographie',
    'Couture',
    'Tricot',
    'Bricolage',
    'Jardinage',
    'Décoration',
    'Voyage',
    'Camping',
    'Pêche',
    'Chasse',
    'Poker',
    'Billard',
    'Jeux de société',
    'Jeux vidéo',
    'Informatique',
    'Programmation',
    'Robotique',
    'Astronomie',
    'Bricolage',
    'Jardinage',
    'Décoration',
    'Voyage',
    'Camping',
    'Pêche',
    'Chasse',
    'Poker',
    'Billard',
    'Jeux de société',
    'Jeux vidéo',
    'Informatique',
    'Programmation',
    'Robotique',
    'Astronomie',
    'Bricolage',
    'Jardinage',
    'Décoration',
    'Voyage',
    'Camping',
    'Pêche',
    'Chasse',
    'Poker',
    'Billard',
    'Jeux de société',
    'Jeux vidéo',
    'Informatique',
    'Programmation',
    'Robotique',
    'Astronomie',
    'Bricolage',
    'Jardinage',
    'Décoration',
    'Voyage',
    'Camping',
    'Pêche',
    'Chasse',
    'Poker'
  ];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> selectedChips = [];

  void addToHobbies(String chip) {
    setState(() {
      selectedChips.add(chip);
    });
  }

  void removeFromHobbies(String chip) {
    setState(() {
      selectedChips.remove(chip);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final maxHeight = constraints.maxHeight;
            final thirdOfHeight = maxHeight / 3;
            return Column(
              children: [
                SizedBox(
                  height: thirdOfHeight * 2,
                  child: Header(myHobbies: selectedChips),
                ),
                Expanded(
                  child: Footer(
                    availableHobbies: widget.availableHobbies,
                    addToHobbies: addToHobbies,
                    removeFromHobbies: removeFromHobbies,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
