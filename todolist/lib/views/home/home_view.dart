import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:todolist/extensions/space_ext.dart';
import 'package:todolist/utils/app_str.dart';
import 'package:todolist/utils/constants.dart';
import 'package:todolist/views/home/component/fab.dart';
import 'package:todolist/views/home/widget/task_widget.dart';
import '../../utils/app_colors.dart';
import 'package:lottie/lottie.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<int> testing = [];

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white,

      // FAB
      floatingActionButton: Fab(),

      // BODY
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            // Custom App Bar
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Progress Indicator
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: const CircularProgressIndicator(
                      value: 1 / 3,
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation(
                        AppColors.primaryColor,
                      ),
                    ),
                  ),

                  // Space
                  25.w,

                  // Top Level Task Info
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppStr.mainTitle, style: textTheme.displayLarge),
                      3.h,
                      Text(
                        "1 of 3 tasks completed",
                        style: textTheme.titleMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Divider
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Divider(thickness: 2, indent: 100),
            ),

            // Task List
            SizedBox(
              width: double.infinity,
              height: 540,
              child: testing.isNotEmpty 
                
                // IF NOT EMPTY
                ? ListView.builder(
                  itemCount: testing.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      direction: DismissDirection.horizontal,
                      onDismissed: (_) {
                        // remove item from list

                      },
                      background: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.delete_outline,
                            color: Colors.red,
                            size: 30,
                          ),
                          8.w,
                          const Text(
                            AppStr.deletedTask,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),

                      key: Key(index.toString()),
                      child: const TaskWidget(),
                    );
                  },
                )

                // IF EMPTY
                : Column(
                  // -----------------
                  //      19:15
                  // -----------------
                  children: [
                    // lottie animation
                    Lottie.asset(lottieURL, width: 300, height: 300),
                    FadeInUp(
                      from: 30,
                      child: Text(
                        AppStr.doneAllTask,
                      )
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
