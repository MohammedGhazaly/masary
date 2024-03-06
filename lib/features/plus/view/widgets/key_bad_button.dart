import 'package:flutter/material.dart';

class KeyBadButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const KeyBadButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
