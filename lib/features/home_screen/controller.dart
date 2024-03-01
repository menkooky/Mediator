import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/core/app_colors.dart';

class HomeController {
  late Category selectedCategory;

  final List<Category> home = [
    Category(title: "All", width: 40.w, color: AppColors.gray8F),
    Category(title: "Jobs", width: 43.w, color: AppColors.lGreen),
    Category(title: "Internships", width: 79.w, color: AppColors.lPink),
    Category(title: "Tasks", width: 43.w, color: AppColors.blueC9),
    Category(title: "Competition", width: 82.w, color: AppColors.greenC9),
    Category(title: "Courses", width: 60.w, color: AppColors.blueC2),
  ];
}

class Category {
  final String title;
  final double width;
  final Color color;

  Category({
    required this.color,
    required this.width,
    required this.title,
  });
}
