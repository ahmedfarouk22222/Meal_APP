import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:meal_app/App/core/utils/widgets/custom_appbar.dart';
import 'package:meal_app/App/core/utils/widgets/item_build.dart';
import 'package:meal_app/App/core/values/localization/local_keys.dart';
import 'package:meal_app/App/modules/home/controller/meals_controler.dart';
import 'package:meal_app/App/routes/app_routes.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MealsControler>(
      builder: (controller) {
        if (controller.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CustomAppBar(
                title: LocalKeys.kHomeViewTitle.tr,
                trailing: IconButton(
                  onPressed: () {
                    Get.offAllNamed(
                      AppRoutes.searchView,
                      arguments: controller.meals,
                    );
                  },
                  icon: Icon(Icons.search, color: Colors.white),
                ),
              ),

              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(16),
                shrinkWrap: true,
                itemCount: controller.meals.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.75,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  final meals = controller.meals[index];
                  return GestureDetector(
                    onTap: () {
                      controller.meals[index];
                      Get.offNamed(AppRoutes.detailsView, arguments: meals);
                    },
                    child: ItemBuild(name: meals.name, image: meals.image),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
