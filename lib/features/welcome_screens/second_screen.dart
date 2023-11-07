import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/app_colors.dart';
import '../../widgets/app_button.dart';
import 'widgets/circle.dart';
import 'widgets/welcome_text.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            fit: BoxFit.contain,
            height: 375.h,
            width: 360.w,
            image: AssetImage(
              "assets/images/welcome_image2.jpg",
            ),
          ),
          SizedBox(height: 10.h),
          WelcomeText(
            title: '''We are the best job 
            platform''',
            height: 70.h,
          ),
          SizedBox(height: 15.h),
          WelcomeText2(
            title: "We’re excited to meet you! To get started . ",
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WelcomeCircle(
                color: AppColors.lightGray,
              ),
              WelcomeCircle(
                color: AppColors.darkBlue,
              ),
              WelcomeCircle(
                color: AppColors.lightGray,
              ),
            ],
          ),
          SizedBox(height: 17.h),
          AppButton(
            title: "Next",
            onTap: () {},
          ),
          SizedBox(height: 35.h),
        ],
      ),
    );
  }
}
