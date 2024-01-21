import 'package:adidas_mobile_app/components/cusrom_text/custom_popins_text.dart';
import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  TopCategories({
    super.key,
  });

  final List<IconData> icons = [
    Icons.shopping_bag,
    Icons.shop,
    Icons.travel_explore,
    Icons.sports_gymnastics,
    Icons.party_mode
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomPopinsText(
              text: "Top Categories",
              fontWeight: FontWeight.bold,
            ),
            CustomPopinsText(
              text: "See All",
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.orange.shade700,
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(icons.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: index == 0 ? Colors.orange : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: index == 0
                            ? Colors.orange.shade700
                            : Colors.grey.shade400),
                  ),
                  child: Icon(
                    icons[index],
                    color: index == 0 ? Colors.white : Colors.grey.shade800,
                  ),
                ),
              );
            }),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
