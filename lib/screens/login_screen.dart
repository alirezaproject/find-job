import 'package:find_job/constants.dart';
import 'package:find_job/screens/home_screen.dart';
import 'package:find_job/screens/register_screen.dart';
import 'package:find_job/wigets/custom_textfield.dart';
import 'package:find_job/wigets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    initialization();
    super.initState();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset('${kImagePath}login.png',
                      fit: BoxFit.cover, width: double.infinity),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: theme.textTheme.displayLarge,
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const CustomTextField(
                          suffixIcon: Icon(Icons.alternate_email),
                          text: 'Email'),
                      const SizedBox(
                        height: 22,
                      ),
                      const CustomTextField(
                          suffixIcon: Icon(Icons.remove_red_eye),
                          text: 'Password',
                          isSecure: true),
                      const SizedBox(
                        height: 50,
                      ),
                      SubmitButton(
                          onTap: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()))),
                      Center(
                        child: TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen()),
                          ),
                          child: Text(
                            "Register",
                            style: theme.textTheme.labelSmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
