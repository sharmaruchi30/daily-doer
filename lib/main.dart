import 'package:daily_doer/ui/Screens/homepage.dart';
import 'package:daily_doer/ui/Screens/bttom_nav_bar.dart';
import 'package:daily_doer/ui/Screens/tasks_screen.dart';
import 'package:daily_doer/provider/tasks_screen_provider.dart';
import 'package:daily_doer/ui/animations/box_rotate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => TasksScreenProvider())
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              '/homepage': (context) => const HomeScreen(),
              '/tasks': (context) => const TasksScreen(),
            },
            home: BottomNavBar(),
          ),
        );
      },
    );
  }
}
