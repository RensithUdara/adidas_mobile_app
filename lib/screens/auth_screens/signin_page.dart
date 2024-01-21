import 'package:adidas_mobile_app/providers/signin_provider.dart';
import 'package:adidas_mobile_app/screens/auth_screens/forgot_password.dart';
import 'package:adidas_mobile_app/screens/auth_screens/signup_page.dart';
import 'package:adidas_mobile_app/utils/custom_navigator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../components/cusrom_text/custom_popins_text.dart';
import '../../components/custom_buttons/custom_buton1.dart';
import '../../components/custom_buttons/google_button.dart';
import '../../components/custom_text_filelds/custom_textfileld1.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Consumer<SignInStateProvider>(builder: (context, value, child) {
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
                text: "Impossible Is Nothing",
                fontSize: 17,
                fontWeight: FontWeight.w300,
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
              Row(
                children: [
                  Checkbox(value: false, onChanged: (val) {}),
                  const CustomPopinsText(
                    text: "Remember me",
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      CustomNavigator.goTo(context, const ForgotPasswordPage());
                    },
                    child: CustomPopinsText(
                      text: "Forgot Password ?",
                      color: Colors.orange.shade800,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton1(
                size: size,
                text: "Sign In",
                bgColor: Colors.orange.shade800,
                onTap: () {
                  value.startSignIn();
                },
              ),
              const SizedBox(
                height: 15,
              ),
              GoogleButton(
                ontap: () {},
                size: size,
                onTap: () {},
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    CustomNavigator.goTo(context, const SignUpPage());
                  },
                  child: Text.rich(
                      TextSpan(text: "Don't have an account? ", children: [
                    TextSpan(
                        text: "Sign up",
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
