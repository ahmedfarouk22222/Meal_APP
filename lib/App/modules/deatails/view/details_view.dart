import 'package:flutter/material.dart';
import 'package:meal_app/App/modules/deatails/view/details_view_body.dart';

class DetailsView extends StatelessWidget {
  DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: DetailsViewBody(),
    );
  }
}
