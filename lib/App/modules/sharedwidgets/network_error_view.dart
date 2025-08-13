import 'package:flutter/material.dart';

import 'animated_network_error.dart';

class NetworkErrorView extends StatelessWidget {
  const NetworkErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 50,
        height: 50,
        child: AnimatedNetworkError(),
      ),
    );
  }
}
