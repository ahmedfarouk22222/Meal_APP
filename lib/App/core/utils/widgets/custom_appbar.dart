import 'package:flutter/material.dart';
import 'package:meal_app/App/core/values/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final VoidCallback? onBackTap;
  final Widget? trailing;
  final Widget? searchfield;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.onBackTap,
    this.trailing,
    this.searchfield,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: kPrimaryColor),
      child: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min, // مهم عشان ياخد الحجم المناسب
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: onBackTap,
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (trailing != null) trailing!,
                ],
              ),
              if (searchfield != null) ...[
                const SizedBox(height: 8),
                searchfield!, // شلنا Expanded
              ],
            ],
          ),
        ),
      ),
    );
  }
}
