import 'package:flutter/material.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({
    super.key,
    required this.image,
    required this.name,
    required this.description,
  });

  final String image;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Image.network(
              image,
              height: 500,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),

          // اسم الوجبة بخط واضح وأنيق
          Text(
            name,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),

          // عنوان الوصفة
          const Text(
            "Description:",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,

              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),

          // الوصفة (الوصف)
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              height: 1.5,
              color: Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
