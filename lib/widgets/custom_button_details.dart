import 'package:flutter/material.dart';

class CustomButtonDetails extends StatelessWidget {
  final GlobalKey<FormState> globalKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final String text ;

  const CustomButtonDetails({
    super.key,
    required this.globalKey,
    required this.emailController,
    required this.passwordController,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (globalKey.currentState!.validate()) {
          print(emailController.text);
          print(passwordController.text);
          print('Validation passed');
        }
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 50,
        width: double.infinity,
        child:  Text(
          text,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}