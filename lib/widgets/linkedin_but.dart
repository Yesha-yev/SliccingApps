import 'package:flutter/material.dart';
import '../constants/colors.dart';

class LinkedInButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isOutline;

  const LinkedInButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isOutline = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: isOutline
          ? OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: LinkedInColors.primary, width: 1.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              ),
              child: Text(label,
                style: const TextStyle(
                  color: LinkedInColors.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16)),
            )
          : ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: LinkedInColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
                elevation: 0,
              ),
              child: Text(label,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16)),
            ),
    );
  }
}