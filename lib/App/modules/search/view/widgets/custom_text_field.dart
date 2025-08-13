import 'package:flutter/material.dart';
import 'package:meal_app/App/modules/search/controller/search_controller.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.searchController});

  final MealsSearchController searchController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: searchController.searchMeals,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: "Search meals...",
        hintStyle: TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        prefixIcon: const Icon(Icons.search, color: Colors.white),
      ),
    );
  }
}
