import 'package:design_1/config/colors.dart';
import 'package:design_1/config/screen_size.dart';
import 'package:design_1/widgets/categories_bar.dart';
import 'package:design_1/widgets/categories_item.dart';
import 'package:design_1/widgets/custom_appbar.dart';
import 'package:design_1/widgets/items_card.dart';
import 'package:design_1/widgets/offers_card.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Scaffold(
      backgroundColor: ColorConfig.lightWhiteColor,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: ColorConfig.lightWhiteColor,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
              )),
        ],
        title: const Text(
          'Hey there,',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontWeight: FontWeight.w200),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: const Drawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: Column(
            children: [
              // const CustomAppBar(),
              SizedBox(
                height: height / 70,
              ),
              Expanded(
                child: ListView(
                  children: [
                    CarouselSlider.builder(
                      itemCount: 1,
                      itemBuilder: ((context, index, realIndex) =>
                          const OffersCard()),
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 1000),
                        viewportFraction: 0.8,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      scrollPhysics: NeverScrollableScrollPhysics(),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 224, 224, 224),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search here.',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            color: Color.fromARGB(255, 224, 224, 224),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                      ),
                    ),
                    const CategoriesBar(),
                    const CategoriesItem(),
                    const CategoriesBar(),
                    ItemsCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
