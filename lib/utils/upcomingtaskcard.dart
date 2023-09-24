import 'package:daily_doer/utils/colors.dart';
import 'package:daily_doer/utils/font.dart';
import 'package:flutter/material.dart';

class UpcomingTaskCard extends StatelessWidget {
  const UpcomingTaskCard({super.key});

  Future<void> handleReferesh() async {}
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.blackColor, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Upcoming task",
              style: Font.myCustomFont(color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xff3E4C47),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "02",
                        style: Font.myCustomFont(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "JUN",
                        style: Font.myCustomFont(
                            color: const Color(0xffADB5BD), fsize: 12),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  width: 210,
                  decoration: BoxDecoration(
                      color: const Color(0xff3E4C47),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "14:00 - 15:00",
                        style: Font.myCustomFont(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Take Rest",
                        style: Font.myCustomFont(
                            color: const Color(0xffADB5BD), fsize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
