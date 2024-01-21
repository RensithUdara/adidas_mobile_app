import 'package:adidas_mobile_app/components/cusrom_text/custom_popins_text.dart';
import 'package:adidas_mobile_app/components/custom_buttons/custom_buton1.dart';
import 'package:adidas_mobile_app/components/custom_text_filelds/custom_textfileld1.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  BackButton(),
                  CustomPopinsText(
                    text: "Reset Your Password",
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              const CustomPopinsText(
                text: "Insert your email & get password reset email.",
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField1(
                label: "Email",
                icon: Icons.email,
                controller: emailController,
              ),
              const SizedBox(
                height: 25,
              ),
              CustomButton1(
                  size: size,
                  text: "Send Reset Email",
                  bgColor: Colors.orange.shade800,
                  onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
