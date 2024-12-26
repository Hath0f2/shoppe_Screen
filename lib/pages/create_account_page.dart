import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/button_widget.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: SvgPicture.asset(
                'assets/images/left_bubble.svg',
                width: 20.w,
                height: 210.3.h,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: SvgPicture.asset(
                'assets/images/right_bubble.svg',
                width: 200.63.w,
                height: 210.77.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100.h),
                  Text(
                    'Create',
                    style: TextStyle(
                      fontSize: 42.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Account',
                    style: TextStyle(
                      fontSize: 42.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Container(
                    height: 90.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 2.w),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/camera.svg',
                      height: 40.h,
                      width: 40.w,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.grey[100],
                      suffixIcon: Icon(Icons.visibility_off),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.grey[100],
                        ),
                        child: Text('🇬🇧', style: TextStyle(fontSize: 22.sp)),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Your number',
                            filled: true,
                            fillColor: Colors.grey[100],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40.h),
                 CustomButton(
                    text: "Done",
                    onPressed: () {
                    },
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Cancel',
                        style: TextStyle(fontSize: 18.sp, color: Colors.black54),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
