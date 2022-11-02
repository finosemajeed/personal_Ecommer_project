import 'package:design_1/config/colors.dart';
import 'package:design_1/screens/api.dart';
import 'package:design_1/screens/card_view.dart';

import 'package:flutter/material.dart';

class ItemsCard extends StatelessWidget {
  ItemsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchPhotos(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return GridView.builder(
            physics: const ClampingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 4.0 / 6.1,
              crossAxisCount: 2,
            ),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: snapshot.data!.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx1) => ScreenCardView(
                          image: '${snapshot.data![index].image}',
                          description: '${snapshot.data![index].description}',
                          title: ' ${snapshot.data![index].title!}',
                          rating: '${snapshot.data![index].rating?.rate}',
                          price: '${snapshot.data![index].price}',
                          categories: '${snapshot.data![index].category}',
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 0,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: Image.network(
                            '${snapshot.data![index].image}',
                            filterQuality: FilterQuality.low,
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 200,
                          color: Color.fromARGB(179, 240, 238, 238),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 4),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$' '${snapshot.data![index].price}',
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: ColorConfig.secondaryColor,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 20,
                                              color: Color.fromARGB(
                                                  255, 252, 227, 0),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              '${snapshot.data![index].rating?.rate}',
                                              style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorConfig.secondaryColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    snapshot.data![index].title!
                                        .substring(0, 18),
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 66, 77, 74),
                                    ),
                                  )
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          );
        } else if (snapshot.hasError) {
          const CircularProgressIndicator();
        }

        // By default, show a loading spinner.
        return const LinearProgressIndicator();
      }),
    );
  }
}
