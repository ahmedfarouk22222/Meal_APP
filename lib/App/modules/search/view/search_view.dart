import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_app/App/core/utils/widgets/custom_appbar.dart';
import 'package:meal_app/App/core/utils/widgets/item_build.dart';
import 'package:meal_app/App/core/values/localization/local_keys.dart';
import 'package:meal_app/App/modules/search/controller/search_controller.dart';
import 'package:meal_app/App/modules/search/view/widgets/custom_text_field.dart';
import 'package:meal_app/App/routes/app_routes.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});
  final searchController = Get.find<MealsSearchController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              title: LocalKeys.kSearchViewTitle.tr,
              onBackTap: () {
                Get.offNamed(AppRoutes.home);
              },
              searchfield: CustomTextField(searchController: searchController),
            ),
            GetBuilder<MealsSearchController>(
              builder: (controller) {
                if (controller.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (controller.filteredMeals.isEmpty) {
                  return const Center(child: Text("No meals found"));
                }

                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.filteredMeals.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.75,
                    crossAxisCount: 2,
                  ),

                  itemBuilder: (context, index) {
                    final meal = controller.filteredMeals[index];
                    return GestureDetector(
                      onTap: () {
                        controller.filteredMeals[index];
                        Get.offNamed(
                          AppRoutes.detailsView,
                          arguments: controller.filteredMeals[index],
                        );
                      },
                      child: ItemBuild(image: meal.image, name: meal.name),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
