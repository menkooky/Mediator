import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/features/complete_profile_screen/organization_profile/refactor_textformfield.dart';
import 'package:mediator/features/complete_profile_screen/user_profile/controller.dart';
import 'package:mediator/widgets/app_button.dart';
import '../../../core/app_colors.dart';
import '../../welcome_screens/widgets/welcome_text.dart';

class CompleteUserProfileScreen extends StatelessWidget {
  CompleteUserProfileScreen({Key? key}) : super(key: key);

  final UserProfileController controller = UserProfileController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 44.h),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 24.sp,
                  height: 24.sp,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.smoothGray,
                          spreadRadius: 1.sp,
                        ),
                      ]),
                  child: Icon(
                    Icons.arrow_back_rounded,
                    size: 20.sp,
                    color: AppColors.darkBlue,
                  ),
                ),
                WelcomeText(
                  title: "Fill Your Profile",
                  height: 24.h,
                  width: 162.w,
                  fontSize: 18.sp,
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Container(
              width: 88.w,
              height: 88.h,
              child: Image(
                color: AppColors.lGray,
                image: AssetImage(
                  "assets/images/profile_image.png",
                ),
              ),
            ),
            SizedBox(height: 5.h),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return RefactorTextFormField(
                    text: controller.categories[index].title,
                  );
                },
                itemCount: controller.categories.length,
              ),
            ),
            SizedBox(height: 24.h),
            AppButton(
              title: "Continue",
              onTap: () {},
            ),
            SizedBox(height: 32.h),
          ],
        ),
      ),
    );
  }
}
