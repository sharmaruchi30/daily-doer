import 'package:daily_doer/services/notification_services.dart';
import 'package:daily_doer/utils/font.dart';
import 'package:daily_doer/ui/widgets/custombg.dart';
import 'package:daily_doer/ui/widgets/quotecard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    super.initState();
    notificationServices.requestNotificationPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomBg(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Freshen up your mind with a thought",
                    style: Font.myCustomFont(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const QuoteCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
