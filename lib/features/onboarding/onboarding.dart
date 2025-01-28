import 'package:english_work/core/helper/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/routing/routers_name.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  String _userName = ""; // لتخزين الاسم المستخدم

  @override
  void initState() {
    super.initState();
    _loadUserName(); // جلب الاسم عند بدء الصفحة
  }

  // دالة لقراءة الاسم من SharedPreferences
  Future<void> _loadUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _userName = prefs.getString('user_name') ??
          "Guest"; // إذا لم يوجد اسم، استخدم "Guest"
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
              width: 500.w,
              height: 500.h,
            ),
            SizedBox(height: 20.h),
            Text(
              "English work is an application \n for learning English at work to reach professionalism",
              style: TextStyle(
                fontSize: 20.sp, // حجم الخط
                fontWeight: FontWeight.bold, // سمك الخط
                color: ColorsManager.primary, // لون النص
              ),
              textAlign: TextAlign.center, // محاذاة النص إلى الوسط
              maxLines: 3, // تحديد عدد الأسطر
              overflow: TextOverflow
                  .ellipsis, // إضافة "..." إذا تجاوز النص عدد الأسطر
            ),
            SizedBox(height: 70.h),
            SizedBox(
              width: 300.w,
              height: 50.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsManager.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                onPressed: () {
                  if (_userName.isEmpty) {
                    Navigator.pushNamed(context, RoutersName.usernamepage);
                  }
                  Navigator.pushNamed(context, RoutersName.home);
                },
                child: Text(
                  "Start learning",
                  style: TextStyle(color: Colors.white, fontSize: 20.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
