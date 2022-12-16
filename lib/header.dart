import 'package:choose_my_hobbies/choice_item.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final List<String> myHobbies;
  List<ChoiceItem> selectedHobbies = [];

  Header({
    Key? key,
    required this.myHobbies,
  }) : super(key: key) {
    selectedHobbies = myHobbies
        .map((e) => ChoiceItem(
              label: e,
              isClickable: false,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromRGBO(35, 93, 113, 1),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Text(
                'Vos passe-temps :',
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.white,
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
                              'Choisissez des hobbies parmi ceux ci-dessous !',
                              textAlign: TextAlign.start,
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                color: Colors.white,
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
