import 'package:flutter/material.dart';

/// A common button widget that can be used throughout the application.
class YashwantCommonButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final VoidCallback? onComplete; // Add onComplete callback

  const YashwantCommonButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.onComplete, // Add onComplete parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
        if (onComplete != null) {
          onComplete!(); // Call onComplete if it is not null
        }
      },
      child: child,
    );
  }
}
