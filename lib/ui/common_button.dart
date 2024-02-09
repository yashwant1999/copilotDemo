import 'package:flutter/material.dart';

class YashwantCommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const YashwantCommonButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
