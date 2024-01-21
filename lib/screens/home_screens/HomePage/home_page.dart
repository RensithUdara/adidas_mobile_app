import 'package:adidas_mobile_app/components/cusrom_text/custom_popins_text.dart';
import 'package:adidas_mobile_app/models/sneaker_model.dart';
import 'package:adidas_mobile_app/screens/home_screens/HomePage/widget/product_grid.dart';
import 'package:adidas_mobile_app/screens/home_screens/HomePage/widget/slider.dart';
import 'package:adidas_mobile_app/screens/home_screens/HomePage/widget/top_categories.dart';
import 'package:adidas_mobile_app/utils/demo_data.dart';
import 'package:flutter/material.dart';

import 'widget/action_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<SneakerModel> sneakers = DemoData.sneakers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomActionButton(),
                const SizedBox(
                  height: 15,
                ),
                const CustomPopinsText(
                  text: "Hello Rensith",
                  fontWeight: FontWeight.w500,
                ),
                CustomPopinsText(
                  text: "Let's start shopping",
                  fontSize: 16,
                  color: Colors.grey.shade500,
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomSlider(),
                const SizedBox(
                  height: 10,
                ),
                TopCategories(),
                ProductGrid(sneakers: sneakers)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
