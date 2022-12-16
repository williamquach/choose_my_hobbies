import 'package:choose_my_hobbies/choice_item.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  List<ChoiceItem> selectedHobbies = [];

  Footer({
    Key? key,
    required List<String> availableHobbies,
    required void Function(String chip) addToHobbies,
    required void Function(String chip) removeFromHobbies,
  }) : super(key: key) {
    selectedHobbies = availableHobbies
        .map((e) => ChoiceItem(
              label: e,
              isClickable: true,
              addToHobbies: addToHobbies,
              removeFromHobbies: removeFromHobbies,
            ))
        .toList();
  }

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
            const Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Text(
                'Passe-temps disponibles',
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Color.fromRGBO(35, 93, 113, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
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
                    children: selectedHobbies.isNotEmpty
                        ? selectedHobbies
                        : [
                            const Text(
                              'Aucun passe-temps disponible',
                              textAlign: TextAlign.start,
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                color: Color.fromRGBO(35, 93, 113, 1),
                              ),
                            ),
                          ],
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
