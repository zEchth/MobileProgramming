import 'package:flutter/material.dart';
import 'package:todolist/utils/app_colors.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle task tap
      },

      child: AnimatedContainer(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.primaryColor.withAlpha(22),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(26),
              blurRadius: 10,
              offset: const Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        duration: const Duration(milliseconds: 600),

        child: ListTile(
          // Check Icon
          leading: GestureDetector(
            onTap: () {
              // Handle check action
            },

            child: AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 0.8),
              ),

              child: Icon(Icons.check, color: Colors.white),
            ),
          ),

          // Task Title
          title: const Padding(
            padding: EdgeInsets.only(top: 3, bottom: 5),
            child: Text(
              "Done",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                // decoration: TextDecoration.lineThrough,
              ),
            ),
          ),

          // Task Subtitle
          subtitle: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Description",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                  // decoration: TextDecoration.lineThrough,
                ),
              ),

              // Task Time
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Date",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        "SubDate",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
