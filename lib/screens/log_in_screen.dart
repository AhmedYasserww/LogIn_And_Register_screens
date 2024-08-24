import 'package:flutter/material.dart';
import 'package:untitled/screens/register_screen.dart';
import 'package:untitled/widgets/custom_app_bar.dart';
import 'package:untitled/widgets/custom_button_details.dart';
import 'package:untitled/widgets/custom_email_text_field.dart';
import 'package:untitled/widgets/custom_password_text_field.dart';
class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool visible = true;
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "LogIn"),
      body: Form(
        key: globalKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 30,),
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30,),
               EmailField(emailController: emailController),
                const SizedBox(height: 30,),
              PasswordField(passwordController: passwordController,
                  visible: visible,
                  toggleVisibility: () {
                    setState(() {
                      visible = !visible;
                    });
                  },
              ),
                const SizedBox(height: 30,),
              CustomButtonDetails(
                  globalKey: globalKey,
                  emailController: emailController,
                  passwordController: passwordController,
                  text: "Log In"
              ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account ?",
                      style: TextStyle(fontSize: 18),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>const RegisterScreen()),);
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
