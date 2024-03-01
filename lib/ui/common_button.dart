import 'package:flutter/material.dart';

/// A common button widget that can be used throughout the application.
class YashwantCommonButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onClose;
  final VoidCallback onPressed;
  final VoidCallback? onComplete; // Add onComplete callback

  /// Creates a [YashwantCommonButton] widget.
  ///
  /// The [child] parameter is required and specifies the widget to be displayed as the button's child.
  /// The [onPressed] parameter is required and specifies the callback function to be called when the button is pressed.
  /// The [onComplete] parameter is optional and specifies an additional callback function to be called after the [onPressed] callback is executed.
  /// The [onClose] parameter is required and specifies the callback function to be called when the button is closed.
  const YashwantCommonButton({
    Key? key,
    required this.child,
    required this.onClose, // Add onClose parameter
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
