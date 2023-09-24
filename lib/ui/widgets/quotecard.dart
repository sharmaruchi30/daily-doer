import 'package:flutter/material.dart';

import '../../utils/font.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return //Quote Card
        Container(
      height: 180,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                offset: const Offset(5, 5),
                blurRadius: 15,
                spreadRadius: 1),
            const BoxShadow(
                color: Colors.white,
                offset: Offset(-5, -5),
                blurRadius: 15,
                spreadRadius: 1),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "At first dreams seem impossible, then improbable, then inevitable.",
                style: Font.myCustomFont(),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "~ Christopher Reeve",
                style: Font.myCustomFont(),
              ),
            ],
          ),
          Text(
            "swipe for next",
            style: Font.myCustomFont(color: Colors.grey.shade500),
          )
        ],
      ),
    );
  }
}
