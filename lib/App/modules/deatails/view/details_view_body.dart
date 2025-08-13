import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_app/App/core/utils/widgets/custom_appbar.dart';
import 'package:meal_app/App/core/values/localization/local_keys.dart';
import 'package:meal_app/App/modules/deatails/controller/details_controller.dart';
import 'package:meal_app/App/modules/deatails/view/widgets/details_Item._build.dart';
import 'package:meal_app/App/routes/app_routes.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(
            title: LocalKeys.kdetailsViewTitle.tr,
            onBackTap: () {
              Get.back();
              Get.offNamed(AppRoutes.home);
            },
          ),
          GetBuilder<DetailsController>(
            builder: (controller) => DetailsItem(
              image: controller.meals.image,
              name: controller.meals.name,
              description: controller.meals.description,
            ),
          ),
        ],
      ),
    );
  }
}
