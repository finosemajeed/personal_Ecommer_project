import 'dart:developer';

import 'package:design_1/config/colors.dart';
import 'package:flutter/material.dart';

class ScreenCardView extends StatefulWidget {
  final image;
  final description;
  final title;
  final rating;
  final price;
  final categories;

  const ScreenCardView(
      {super.key,
      required this.image,
      required this.description,
      required this.title,
      required this.rating,
      required this.price,
      required this.categories});

  @override
  State<ScreenCardView> createState() => _ScreenCardViewState();
}

class _ScreenCardViewState extends State<ScreenCardView> {
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Card(
        color: Colors.white,
        child: Column(
          children: [
            Image(
              width: 300,
              height: 300,
              image: NetworkImage("${widget.image}"),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${widget.categories}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '${widget.title}',
                style: const TextStyle(
                  fontSize: 30,
                  color: ColorConfig.darkBlackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '\$ ${widget.price} / p',
                style: const TextStyle(
                  color: ColorConfig.secondaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 2,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 80,
              width: 200,
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        itemCount > 0 ? itemCount-- : itemCount;
                      });
                    },
                    icon: const Icon(
                      Icons.horizontal_rule,
                      size: 35,
                      color: ColorConfig.secondaryColor,
                    ),
                  ),
                  Text(
                    "$itemCount",
                    style: TextStyle(fontSize: 35),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        itemCount++;

                        log('$itemCount');
                      });
                    },
                    icon: const Icon(
                      Icons.add,
                      size: 35,
                      color: ColorConfig.secondaryColor,
                    ),
                  ),
                ],
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Description',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 90,
              child: ListView(
                children: [
                  Text(
                    '${widget.description}',
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$ ${widget.price}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => 'Null',
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            ColorConfig.secondaryColor)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Buy Now',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}



