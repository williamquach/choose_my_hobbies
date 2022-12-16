import 'package:choose_my_hobbies/choice_item.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final List<String> myHobbies;

  const Header({Key? key, required this.myHobbies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromRGBO(35, 93, 113, 1),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Vos passe-temps',
              textAlign: TextAlign.start,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.white,
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
                    children: myHobbies
                        .map((e) => ChoiceItem(
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
