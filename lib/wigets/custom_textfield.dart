import 'package:find_job/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Widget suffixIcon;
  final String text;
  final bool isSecure;

  const CustomTextField(
      {super.key,
      required this.suffixIcon,
      required this.text,
      this.isSecure = false});

  @override
  Widget build(BuildContext context) {
    
    
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: theme.textTheme.displayMedium,
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: isSecure,
          
          decoration: InputDecoration(
        
              suffixIconColor: kSecondaryColor,
              suffixIcon: suffixIcon,
              hintText: text,
              enabledBorder: kBorder,
              border: kBorder,
              focusedBorder: kBorder),
        ),
      ],
    );
  }
}
