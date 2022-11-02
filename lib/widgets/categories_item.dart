// ignore: file_names
import 'package:design_1/config/screen_size.dart';
import 'package:design_1/screens/api.dart';
import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.getWidth(context);
    return SizedBox(
      height: 50,
      width: width,
      child: FutureBuilder(
        future: fetchPhotos(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      label: Text('${snapshot.data![index].category}'),
                      elevation: 3,
                    )
                    // Container(
                    //   height: 100,
                    //   width: 100,
                    //   color: Colors.amber,
                    //   child: Image.network(
                    //     '${snapshot.data![index].image}',
                    //     fit: BoxFit.fill,
                    //   ),
                    // ),
                    );
              },
            );
          } else if (snapshot.hasError) {
            print('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        }),
      ),
    );
  }
}
