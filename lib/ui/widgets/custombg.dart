import 'package:daily_doer/utils/colors.dart';
import 'package:daily_doer/utils/font.dart';
import 'package:daily_doer/utils/upcomingtaskcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'circle.dart';

class CustomBg extends StatelessWidget {
  const CustomBg({super.key});

  @override
  Widget build(BuildContext context) {
    // BACKGROUND
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
          gradient: AppColors.mainGradient),
      child: Stack(
        children: [
          const Positioned(
            right: -60,
            top: 40,
            child: Opacity(
              opacity: 0.4000000059604645,
              child: Circle(
                  size: 270,
                  rotationFactor: 1.5,
                  colors: [
                    Color.fromARGB(153, 67, 193, 151),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0]),
            ),
          ),
          const Positioned(
            top: -60,
            left: -100,
            child: Opacity(
              opacity: 0.800000011920929,
              child: Circle(
                  size: 400,
                  rotationFactor: 1.5,
                  colors: [
                    Color(0xff19018E),
                    Color(0xff43C197),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 100]),
            ),
          ),
          const Positioned(
            right: -30,
            bottom: 40,
            child: Circle(
                size: 270,
                rotationFactor: 1.5,
                colors: [
                  Color.fromARGB(164, 62, 42, 195),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0]),
          ),

          //Main Content

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                        image: AssetImage("assets/icons/menu.png"),
                        height: 35,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: const Image(
                          image: AssetImage("assets/profile.jpg"),
                          height: 50,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Good Morning \nDavid !",
                    style: Font.myCustomFont(
                        color: Colors.white,
                        fsize: 26,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Checkout your daily practices to not miss on anything.",
                    style: Font.myCustomFont(
                        color: Colors.white,
                        fsize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const UpcomingTaskCard()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
