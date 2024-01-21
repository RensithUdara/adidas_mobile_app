import 'package:adidas_mobile_app/providers/signup_provider.dart';
import 'package:adidas_mobile_app/screens/auth_screens/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../components/cusrom_text/custom_popins_text.dart';
import '../../components/custom_buttons/custom_buton1.dart';
import '../../components/custom_buttons/google_button.dart';
import '../../components/custom_text_filelds/custom_textfileld1.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Consumer<SignUpStateProvider>(builder: (context, value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomPopinsText(
                text: "Adidas",
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              const CustomPopinsText(
                text: "Create New Account With YOur Email & Password",
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField1(
                label: "User Name",
                icon: Icons.person,
                controller: value.nameController,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField1(
                label: "Email",
                icon: Icons.email,
                controller: value.emailController,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField1(
                label: "Password",
                icon: Icons.password,
                isPassword: true,
                controller: value.passwordController,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField1(
                label: "Confirm Password",
                icon: Icons.password,
                isPassword: true,
                controller: value.confirmpasswordController,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton1(
                size: size,
                text: "Create Account",
                bgColor: Colors.orange.shade800,
                onTap: () {
                  value.startCreateUserAccount();
                },
              ),
              const SizedBox(
                height: 10,
              ),
              GoogleButton(
                ontap: () {},
                size: size,
                isSignIn: false,
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInPage(),
                        ));
                  },
                  child: Text.rich(
                      TextSpan(text: "Already have an account? ", children: [
                    TextSpan(
                        text: "Sign in",
                        style:
                            GoogleFonts.poppins(color: Colors.orange.shade800))
                  ])),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
