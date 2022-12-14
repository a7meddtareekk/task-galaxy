import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_galaxy/task-galaxy/core/utils/media_query.dart';
import 'package:task_galaxy/task-galaxy/presentation/controller/news_cubit.dart';
import 'package:task_galaxy/task-galaxy/presentation/screens/bbc-details.dart';

import '../screens/the-next-web-details.dart';

class LatestNews extends StatefulWidget {
  const LatestNews({Key? key}) : super(key: key);

  @override
  State<LatestNews> createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
  bool isSelected = false;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var bbcNews = NewsCubit.get(context).bbcNews;
        var theNextWebNews = NewsCubit.get(context).theNextWeb;
        bbcNews.length - 1;
        return Expanded(
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    height: context.height * 0.18,
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        bbcNews[index].id = index;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => BbcDetails(
                                  id: bbcNews[index].id,
                                )));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Container(
                              width: context.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(bbcNews[index].image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 120,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        bbcNews[index].title,
                                        style: const TextStyle(fontSize: 14),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${DateTime.now().difference(DateTime.parse(bbcNews[index].date)).inHours.toString()} hours ago",
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                bbcNews[index].isSelected =
                                                    !bbcNews[index]
                                                        .isSelected;
                                              });
                                            },
                                            child: Icon(
                                              Icons.bookmark,
                                              size: 20,
                                              color: bbcNews[index].isSelected
                                                  ? Colors.amber
                                                  : Colors.grey,
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: context.height * 0.18,
                    child: InkWell(
                      onTap: () {
                        theNextWebNews[index].id = index;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => TheNextWebDetails(
                                  id: theNextWebNews[index].id,
                                )));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Container(
                              width: context.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                                image: DecorationImage(
                                  image:
                                      NetworkImage(theNextWebNews[index].image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 120,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        theNextWebNews[index].title,
                                        style: const TextStyle(fontSize: 14),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${DateTime.now().difference(DateTime.parse(theNextWebNews[index].date)).inHours.toString()} hours ago",
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                theNextWebNews[index]
                                                        .isSelected =
                                                    !theNextWebNews[index]
                                                        .isSelected;
                                              });
                                            },
                                            child: Icon(
                                              Icons.bookmark,
                                              size: 20,
                                              color: theNextWebNews[index]
                                                      .isSelected
                                                  ? Colors.amber
                                                  : Colors.grey,
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
              );
            },
            itemCount: theNextWebNews.length,
          ),
        );
      },
    );
  }
}
