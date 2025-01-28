import 'package:english_work/core/routing/app_router.dart';
import 'package:english_work/core/routing/routers_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const EnglishWork());
}

class EnglishWork extends StatelessWidget {
  const EnglishWork({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(393, 852),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: RoutersName.onboarding,
      ),
    );
  }
}
