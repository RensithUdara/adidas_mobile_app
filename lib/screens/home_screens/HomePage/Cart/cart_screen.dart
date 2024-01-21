import 'package:adidas_mobile_app/components/cusrom_text/custom_popins_text.dart';
import 'package:adidas_mobile_app/components/custom_buttons/custom_buton1.dart';
import 'package:adidas_mobile_app/models/sneaker_model.dart';
import 'package:adidas_mobile_app/utils/demo_data.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<SneakerModel> sneakers = DemoData.sneakers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Row(
                children: [
                  BackButton(),
                  CustomPopinsText(
                    text: "My Cart",
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: DemoData.sneakers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFEBEEF0)),
                        child: Row(children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        NetworkImage(sneakers[index].image))),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomPopinsText(
                                text: sneakers[index].title,
                                fontSize: 18,
                              ),
                              Chip(
                                label: Text("LKR ${sneakers[index].price}"),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            width: 80,
                            height: 35,
                            decoration: BoxDecoration(
                                color: const Color(0xFFEBEEF0),
                                border:
                                    Border.all(color: Colors.orange.shade900),
                                borderRadius: BorderRadius.circular(35)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.remove,
                                  color: Colors.orange.shade900,
                                ),
                                const CustomPopinsText(
                                  text: "1",
                                  fontSize: 18,
                                ),
                                Icon(
                                  Icons.add,
                                  color: Colors.orange.shade900,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ]),
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomPopinsText(
                            text: "Total :",
                            color: Colors.white,
                          ),
                          CustomPopinsText(
                            text: "LKR 125000.00",
                            color: Colors.orange.shade400,
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomButton1(
                          size: MediaQuery.sizeOf(context),
                          text: "Buy Now",
                          bgColor: Colors.orange,
                          onTap: () {}),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
