import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_galaxy/task-galaxy/core/utils/media_query.dart';
import 'package:task_galaxy/task-galaxy/presentation/controller/news_cubit.dart';
import 'package:task_galaxy/task-galaxy/presentation/screens/egy-details.dart';

class EgyptNewsBanner extends StatefulWidget {
  const EgyptNewsBanner({Key? key}) : super(key: key);

  @override
  State<EgyptNewsBanner> createState() => _EgyptNewsBannerState();
}

class _EgyptNewsBannerState extends State<EgyptNewsBanner> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var news = NewsCubit.get(context).egyptNews;

        return Column(
          children: [
            CarouselSlider(
              items: [
                for (int i = 0; i < news.length; i++)
                  news[i].image != "null"
                      ? InkWell(
                          onTap: () {
                            news[i].id = i;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) => EgyDetails(
                                          id: news[i].id,
                                        )));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              height: context.height * 0.9,
                              width: context.width * 0.9,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(news[i].image),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${DateTime.now().difference(DateTime.parse(news[i].date)).inHours.toString()} hours ago",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                news[i].isSelected = !news[i].isSelected;
                                              });
                                            },
                                            child:  Icon(
                                              Icons.bookmark,
                                              color: news[i].isSelected ? Colors.amber: Colors.white,
                                            )),
                                      ],
                                    ),
                                    Text(news[i].title,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      : InkWell(
                      onTap: () {
                        news[i].id = i;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => EgyDetails(
                                  id: news[i].id,
                                )));
                      },
                        child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              height: context.height * 0.3,
                              width: context.width * 0.9,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://www.babycenter.com/ims/2021/06/baby-girl-names-that-start-with-Z_wide.jpg'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${DateTime.now().difference(DateTime.parse(news[i].date)).inHours.toString()} hours ago",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              news[i].isSelected= !news[i].isSelected;
                                            });
                                          },
                                          child:  Icon(
                                            Icons.bookmark,
                                            color: news[i].isSelected ? Colors.amber: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(news[i].title,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      )
              ],
              options: CarouselOptions(
                  aspectRatio: 1.8,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  animateToClosest: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  pageSnapping: true,
                  scrollPhysics: const RangeMaintainingScrollPhysics()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < news.length; i++)
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: context.width * 0.003),
                    height: context.height * 0.02,
                    width: context.width * 0.02,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == i
                            ? Colors.deepOrange
                            : Colors.grey),
                  ),
              ],
            )
          ],
        );
      },
    );
  }
}
