import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/features/home/data/symptoms_list.dart';
import 'package:medicapp/features/home/presanteion/view/widget/symptoms_list_view_item.dart';

class SymptomsSection extends StatelessWidget {
  const SymptomsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What are you symptoms?',
            style: Styles.textStyle20.copyWith(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 70,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: symptomsList.length,
              separatorBuilder: (context, index) => const SizedBox(
                width: 30,
              ),
              itemBuilder: (context, index) {
                return SymptomsItem(
                  text: symptomsList[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
