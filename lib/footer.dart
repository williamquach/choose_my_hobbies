import 'package:choose_my_hobbies/choice_item.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
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

  Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Passe-temps disponibles',
              textAlign: TextAlign.start,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Color.fromRGBO(35, 93, 113, 1),
                fontSize: 20,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    runAlignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: availableHobbies
                        .map((e) =>
                        ChoiceItem(
                          label: e,
                          isClickable: true,
                        ))
                        .toList(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
