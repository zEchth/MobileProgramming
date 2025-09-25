import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:todolist/utils/app_colors.dart';

class Fab extends StatelessWidget {
  const Fab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to task view
        log('Navigating to task view...');
      },
    
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 10,
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
           borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Icon(
            Icons.add, 
            color: Colors.white
          )
        ),
       )
      )
      ,
    );
  }
}