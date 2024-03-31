import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';

Widget chatItem() {
  return Column(
    children: [
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 28.sp,
                child: Image.asset(
                  "assets/images/person-circle.png",
                  fit: BoxFit.cover,
                  width: 67.76.w,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(bottom: 1.h, end: 1.w),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 6.sp,
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 1.5.w,
                        bottom: 4.h,
                        left: .8.w,
                        top: .5.h,
                      ),
                      child: CircleAvatar(
                        radius: 5.sp,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "User Name",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColors.black,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(width: 160.w),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "12:30",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: AppColors.grayA4,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "okay, Do you have a deal?",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColors.gray83,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      SizedBox(height: 5.h),
      Divider(
        height: 1.h,
        color: AppColors.grayA8,
        thickness: .5.h,
      ),
    ],
  );
}