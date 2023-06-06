import 'package:find_job/constants.dart';
import 'package:find_job/wigets/custom_textfield.dart';
import 'package:find_job/wigets/submit_button.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    '${kImagePath}register.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Text(
                    "Registration",
                    style: theme.textTheme.displayLarge,
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  const CustomTextField(
                      suffixIcon: Icon(Icons.alternate_email), text: 'Email'),
                  const SizedBox(
                    height: 17,
                  ),
                  const CustomTextField(
                      suffixIcon: Icon(Icons.remove_red_eye), text: 'Password'),
                  const SizedBox(
                    height: 17,
                  ),
                  const CustomTextField(
                      suffixIcon: Icon(Icons.remove_red_eye),
                      text: 'Re-enter Password'),
                  const SizedBox(
                    height: 45,
                  ),
                  SubmitButton(
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
