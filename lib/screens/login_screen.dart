import 'package:find_job/constants.dart';
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
                      Text(
                        'Email',
                        style: theme.textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            suffixIconColor: kSecondaryColor,
                            suffixIcon: const Icon(Icons.alternate_email),
                            hintText: 'Email...',
                            enabledBorder: kBorder,
                            border: kBorder,
                            focusedBorder: kBorder),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Text(
                        'Password',
                        style: theme.textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIconColor: kSecondaryColor,
                          suffixIcon: const Icon(Icons.remove_red_eye_sharp),
                          hintText: 'Password...',
                          enabledBorder: kBorder,
                          border: kBorder,
                          focusedBorder: kBorder,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: theme.elevatedButtonTheme.style,
                        child: Text(
                          'Submit',
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {},
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
