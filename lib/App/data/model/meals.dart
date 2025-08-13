class MealsResponse {
  final List<Meals>? meals;

  MealsResponse({this.meals});

  factory MealsResponse.fromJson(Map<String, dynamic> json) {
    return MealsResponse(
      meals: json['meals'] != null
          ? List<Meals>.from(json['meals'].map((meals) => Meals.fromjson(meals)))
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {'meals': meals?.map((meal) => meal.toJson()).toList()};
  }
}

class Meals {
  final String image;
  final String name;
  final String description;
  Meals({required this.image, required this.name, required this.description});
  factory Meals.fromjson(Map<String, dynamic> json) {
    return Meals(
      image: json['strMealThumb'] ?? '',
      name: json['strMeal'] ?? '',
      description: json['strInstructions'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'strMealThumb': image,
      'strMeal': name,
      'strInstructions': description,
    };
  }
}
