import 'package:flutter/material.dart';
// import 'package:simas_app1/home_screen/top_bar.dart';
import 'package:simas_app1/home_screen/greeting_section.dart';
import 'package:simas_app1/home_screen/user_card.dart';
import 'package:simas_app1/home_screen/task_list.dart';
// import 'package:simas_app1/home_screen/bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // TopBar(),
              GreetingSection(),
              UserCard(),
              TaskList()
              // BottomNavigation(),
            ],
          ),
        ),
      ),
    );
  }
}
