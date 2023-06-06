import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final Function()? onTap;
  const SubmitButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onTap,
      style: theme.elevatedButtonTheme.style,
      child: Text(
        'Submit',
        style: theme.textTheme.labelMedium,
      ),
    );
  }
}
