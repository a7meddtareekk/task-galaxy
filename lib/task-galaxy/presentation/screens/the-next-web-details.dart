import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_galaxy/task-galaxy/core/utils/app_strings.dart';
import 'package:task_galaxy/task-galaxy/core/utils/media_query.dart';
import 'package:task_galaxy/task-galaxy/presentation/controller/news_cubit.dart';

class TheNextWebDetails extends StatefulWidget {
  const TheNextWebDetails({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  State<TheNextWebDetails> createState() => _TheNextWebDetailsState();
}

class _TheNextWebDetailsState extends State<TheNextWebDetails> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var theNextWeb = NewsCubit.get(context).theNextWeb;
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: 250.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: FadeIn(
                    duration: const Duration(milliseconds: 500),
                    child: ShaderMask(
                      shaderCallback: (rect) {
                        return const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Colors.black,
                            Colors.black,
                            Colors.transparent,
                          ],
                          stops: [0.0, 0.5, 1.0, 1.0],
                        ).createShader(
                          Rect.fromLTRB(0.0, 0.0, rect.width, rect.height),
                        );
                      },
                      blendMode: BlendMode.dstIn,
                      child: Container(
                        width: context.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: theNextWeb[widget.id].image != "null"
                                    ? NetworkImage(theNextWeb[widget.id].image)
                                    : const NetworkImage(
                                        'https://www.babycenter.com/ims/2021/06/baby-girl-names-that-start-with-Z_wide.jpg'))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    theNextWeb[widget.id].isSelected =
                                        !theNextWeb[widget.id].isSelected;
                                  });
                                },
                                child: Align(
                                    alignment: AlignmentDirectional.topEnd,
                                    child: Icon(
                                      Icons.bookmark,
                                      color: theNextWeb[widget.id].isSelected
                                          ? Colors.amber
                                          : Colors.white,
                                      size: 20,
                                    )),
                              ),
                              Text(
                                '${DateTime.now().difference(DateTime.parse(theNextWeb[widget.id].date)).inHours.toString()} hours ago',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: FadeInUp(
                  from: 20,
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: context.width * 0.01,
                              height: context.height * 0.1,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: context.width * 0.01,
                            ),
                            Expanded(
                              child: Text(theNextWeb[widget.id].title,
                                  maxLines: 3,
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(height: context.height * 0.05),
                        theNextWeb[widget.id].description != "null"
                            ? Text(theNextWeb[widget.id].description)
                            : Text(AppStrings.thereIsNoDesc),
                        SizedBox(height: context.height * 0.02),
                        Text(
                          AppStrings.overView,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(height: context.height * 0.02),
                        theNextWeb[widget.id].content != "null"
                            ? Text(
                                theNextWeb[widget.id].content,
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.2,
                                ),
                              )
                            :  Text(
                                AppStrings.thereIsNoContent,
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.2,
                                ),
                              ),
                        const SizedBox(height: 8.0),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
