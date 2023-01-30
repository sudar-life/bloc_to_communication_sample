import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Center(
        child: CircularProgressIndicator(
          strokeWidth: 1,
          color: Colors.red,
        ),
      ),
    );
  }
}
