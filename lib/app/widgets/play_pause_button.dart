import 'package:flutter/material.dart';

class PlayPauseButton extends StatelessWidget {
  final IconData icon;
  final double buttonSize;
  final double iconSize;
  final Color buttonColor;
  final Color iconColor;
  final VoidCallback onPressed;
  const PlayPauseButton({
    Key? key,
    required this.onPressed,
    this.icon = Icons.play_arrow_rounded,
    this.buttonSize = 30,
    this.iconSize = 24,
    this.buttonColor = Colors.white,
    this.iconColor = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(buttonSize, buttonSize),
        shape: const CircleBorder(),
        primary: buttonColor,
      ),
      child: Icon(icon, size: iconSize, color: iconColor),
    );
  }
}
