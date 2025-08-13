import 'package:flutter/material.dart';

class AnimatedNetworkError extends StatefulWidget {
  const AnimatedNetworkError({super.key});

  @override
  State<StatefulWidget> createState() => _AnimatedNetworkErrorState();
}

class _AnimatedNetworkErrorState extends State<AnimatedNetworkError>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  var flickerCount = 3;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      controller,
    )..addStatusListener(
        (
          status,
        ) {
          setState(() {
            if (status == AnimationStatus.completed) {
              if (mounted) controller.reverse();
            } else if (status == AnimationStatus.dismissed) {
              if (flickerCount > 1) {
                if (mounted) controller.forward();
                flickerCount--; // Decrement counter to count for flickeres already done
              } else {
                // Reset flicker counter to normal value to start over again
                flickerCount = 3;
                Future.delayed(const Duration(seconds: 1)).then(
                  (value) => {if (mounted) controller.forward()},
                ); // Added '.orCancel' to prevent calling after dispose
              }
            }
          });
        },
      );
    if (mounted) controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return _AnimatedWidget(
      animation: animation,
    );
  }

  @override
  void dispose() {
    controller.stop();
    controller.dispose();
    super.dispose();
  }
}

class _AnimatedWidget extends AnimatedWidget {
  const _AnimatedWidget({
    required Animation<double> animation,
  }) : super(
          listenable: animation,
        );

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return Center(
      child: FadeTransition(
        opacity: animation,
        child: Icon(
          Icons.signal_wifi_statusbar_connected_no_internet_4,
          color: Colors.red[800],
        ),
      ),
    );
  }
}
