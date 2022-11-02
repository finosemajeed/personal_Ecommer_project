import 'package:flutter/material.dart';

class DateBox extends StatelessWidget {
  const DateBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        date(12),
        const SizedBox(width: 20),
        date(10),
        const SizedBox(width: 20),
        date(22),
      ],
    );
  }

  Widget date(int date) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
      ),
      height: 30,
      width: 30,
      child: Center(
        child: Text(
          date.toString(),
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
