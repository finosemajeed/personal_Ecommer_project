import 'package:design_1/config/screen_size.dart';
import 'package:design_1/widgets/date_box.dart';
import 'package:flutter/material.dart';

class OffersCard extends StatelessWidget {
  const OffersCard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.getWidth(context);
    return Container(
        height: 200,
        width: width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 221, 218, 218),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                    child: Text(
                      'New Year Sale',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: Text(
                      '25% off',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  DateBox()
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.network(
                  'https://www.shutterstock.com/image-photo/red-canvas-bag-isolated-on-600w-1891139233.jpg'),
            )
          ],
        ));
  }
}
