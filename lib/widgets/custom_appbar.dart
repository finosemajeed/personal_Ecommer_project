import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextFormField(
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 224, 224, 224),
              prefixIcon: Icon(Icons.search),
              hintText: 'Search here.',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
              onPressed: () {}, icon: const Icon(Icons.notification_add)),
        ),
      ],
    );
  }
}
