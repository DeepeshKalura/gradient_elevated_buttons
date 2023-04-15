import 'package:flutter/material.dart';

/// A customizable elevated button with a gradient background and stroke.
///
/// The button can be customized with a background gradient, a stroke gradient,
/// a border width, a border radius, an elevation, and a child widget. The `onPressed`
/// callback must also be provided to handle button taps.
///
/// Example usage:
/// ```dart
/// GradientElevatedButtons(
///   backgroundGradient: LinearGradient(...),
///   strokeGradient: LinearGradient(...),
///   onPressed: () {},
///   child: Text('Button'),
/// )
/// ```

class GradientElevatedButtons extends StatelessWidget {
  final Gradient backgroundGradient;
  final Gradient strokeGradient;
  final VoidCallback onPressed;
  final double borderWidth;
  final Widget child;
  final double borderRadius;
  final double elevation;

  const GradientElevatedButtons({
    Key? key,
    required this.backgroundGradient,
    required this.strokeGradient,
    required this.onPressed,
    this.borderWidth = 1.0,
    required this.child,
    this.borderRadius = 16.0,
    this.elevation = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(
              width: borderWidth,
              style: BorderStyle.solid,
              color: Colors.transparent,
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        ),
        elevation: MaterialStateProperty.all<double>(elevation),
        shadowColor: MaterialStateProperty.all<Color>(
          Colors.black.withOpacity(0.6),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: backgroundGradient,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.fromBorderSide(
            BorderSide(
              width: borderWidth,
              style: BorderStyle.solid,
              color: Colors.transparent,
            ),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: child,
      ),
    );
  }
}
