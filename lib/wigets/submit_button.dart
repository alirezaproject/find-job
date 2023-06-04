import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ElevatedButton(
      onPressed: () {},
      style: theme.elevatedButtonTheme.style,
      child: Text(
        'Submit',
        style: theme.textTheme.labelMedium,
      ),
    );
  }
}
