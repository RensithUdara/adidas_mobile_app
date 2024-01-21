import 'package:adidas_mobile_app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
            backgroundColor: Colors.orange,
            child: Icon(
              Icons.menu,
              color: Colors.white,
            )),
        const Spacer(),
        const CircleAvatar(
            backgroundColor: Colors.orange,
            child: Icon(
              Icons.search,
              color: Colors.white,
            )),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            AuthController().signOutUser();
          },
          child: const CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              )),
        )
      ],
    );
  }
}
