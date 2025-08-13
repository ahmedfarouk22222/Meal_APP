import 'package:flutter/material.dart';
import 'package:meal_app/App/modules/home/view/widgets/change_lang.dart';
import 'package:meal_app/App/modules/home/view/widgets/change_theme_buttom.dart';
import 'package:meal_app/App/modules/home/view/widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: HomeBody(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 32),

          ChangeLang(),

          const Spacer(),

          const ChangeThemeButtom(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
