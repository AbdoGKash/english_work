import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:english_work/core/helper/color_manger.dart'; // تأكد من أن المسار صحيح

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _userName = ""; // لتخزين الاسم المستخدم

  @override
  void initState() {
    super.initState();
    _loadUserName(); // جلب الاسم عند بدء الصفحة
  }

  Future<void> _loadUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userName = prefs.getString('user_name') ?? '';
    setState(() {
      _userName = userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.primary,
        centerTitle: true,
        title: const Text(
          "HomeScreen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome, $_userName!", // عرض الاسم المستخدم
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // إضافة أي عمل تريده عند الضغط على الزر
              },
              child: const Text("Go to Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
