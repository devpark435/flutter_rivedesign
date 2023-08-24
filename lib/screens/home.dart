import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rive_flutter/provider/best_picture_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: const SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(flex: 5, child: HomeHeader()),
            Expanded(flex: 5, child: HomeFooter())
          ],
        )));
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30, left: 10, bottom: 10),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          child: Text(
            "Weekly Best Picture",
            style: Theme.of(context).textTheme.displaySmall!.apply(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeightDelta: 3,
                ),
          ),
        ),
        Expanded(
            child: FutureBuilder(
                future: bestPictureProvider(),
                builder: ((context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return CarouselSlider.builder(
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height,
                        viewportFraction: 1,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        scrollDirection: Axis.horizontal,
                        enableInfiniteScroll: true,
                        onPageChanged: (index, reason) {
                          // setState(() {
                          //   _current = index;
                          // });
                        },
                      ),
                      itemCount: 3,
                      itemBuilder:
                          (BuildContext context, int index, int realIndex) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              '${snapshot.data!.best![index].image}'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )),
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                        alignment: Alignment.topLeft,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              width: width,
                                              child: Text(
                                                '${snapshot.data!.best![index].title}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge!
                                                    .apply(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onBackground,
                                                        fontWeightDelta: 3),
                                              ),
                                            ),
                                            SizedBox(
                                              width: width,
                                              child: Text(
                                                '${snapshot.data!.best![index].location}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge!
                                                    .apply(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onBackground,
                                                        fontWeightDelta: 3),
                                              ),
                                            ),
                                            SizedBox(
                                              width: width,
                                              child: Text(
                                                '${snapshot.data!.best![index].date}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .apply(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onBackground,
                                                        fontWeightDelta: 1),
                                              ),
                                            ),
                                          ],
                                        )))
                              ],
                            ));
                      },
                    );
                  }
                })))
      ],
    );
  }
}

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
