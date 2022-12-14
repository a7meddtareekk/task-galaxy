// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:task_galaxy/task-galaxy/core/utils/app_strings.dart';
import 'package:task_galaxy/task-galaxy/core/utils/media_query.dart';

import '../componants/bunner.dart';
import '../componants/latest-news.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: SingleChildScrollView(
       child: SizedBox(
         height: context.height,
         width: context.width,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               color: Colors.white,
               height: context.height*0.15,
               width: context.width,
               alignment: AlignmentDirectional.bottomStart,
               child: Padding(
                 padding: const EdgeInsets.only(bottom: 15.0,left: 15),
                 child: Text(AppStrings.news,style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
               ),
             ),
              const EgyptNewsBanner(),
             SizedBox(height: context.height*0.01,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
               child: Text(AppStrings.latestNews,style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
             ),
             const LatestNews(),
           ],
         ),
       ),
     ),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey,

          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: "Bookmark"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings"),
      ]),
    );
  }
}
