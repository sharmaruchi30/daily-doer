import 'package:daily_doer/provider/tasks_screen_provider.dart';
import 'package:daily_doer/utils/font.dart';
import 'package:daily_doer/ui/widgets/task_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
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
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Manage your tasks.",
                style: Font.myCustomFont(fsize: 24),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Consumer<TasksScreenProvider>(
              builder: (context, value, child) {
                return Column(
                  children: [
                    Row(
                      children: [
                        for (int i = 0; i < value.categories.length; i++)
                          GestureDetector(
                            onTap: () => value.setSelectedIndex = i,
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              width: MediaQuery.of(context).size.width /
                                  value.categories.length,
                              padding: const EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: value.selectedIndex == i
                                          ? const BorderSide(
                                              color: Colors.black)
                                          : const BorderSide(
                                              color: Colors.transparent))),
                              child: Center(
                                child: Text(
                                  value.categories[i],
                                  style: Font.myCustomFont(fsize: 16),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Column(
                        children: [TaskCard(), TaskCard(), TaskCard()],
                      ),
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
