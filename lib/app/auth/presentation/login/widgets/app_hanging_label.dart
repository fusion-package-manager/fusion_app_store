import 'package:flutter/material.dart';

class AppHangingLabel extends StatelessWidget {
  const AppHangingLabel({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 30,
      decoration: BoxDecoration(
        color: const Color(0xFFFBEBEA),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.10),
            blurRadius: 16,
            offset: const Offset(0, -4),
          )
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: "Sen",
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
