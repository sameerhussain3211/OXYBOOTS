import 'package:flutter/material.dart';

class Custombuttom extends StatelessWidget {
  final String title;
  final double size;
  final VoidCallback? onPressedCallback;
  Custombuttom({
    required this.title,
    required this.size,
    this.onPressedCallback,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: size,
      child: FloatingActionButton(
        onPressed: onPressedCallback,
        backgroundColor: const Color.fromARGB(255, 113, 182, 237),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }
}
