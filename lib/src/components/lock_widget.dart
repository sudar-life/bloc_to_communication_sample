import 'package:flutter/material.dart';

class LockWidget extends StatelessWidget {
  const LockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.withOpacity(0.4),
      ),
      height: 100,
      child: const Icon(
        Icons.lock,
        color: Colors.grey,
        size: 24.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
    );
  }
}
