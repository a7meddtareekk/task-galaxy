import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_galaxy/task-galaxy/core/Services/ServicesLocator.dart';
import 'package:task_galaxy/task-galaxy/core/utils/app_theme.dart';
import 'package:task_galaxy/task-galaxy/presentation/componants/latest-news.dart';
import 'package:task_galaxy/task-galaxy/presentation/controller/news_cubit.dart';
import 'package:task_galaxy/task-galaxy/presentation/screens/home-screen.dart';

void main() {
  ServicesLocator().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<NewsCubit>()..getEgyptNews()..getBbcNews()..getTheNextWebNews(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: const HomeScreen(),
      ),
    );
  }
}

