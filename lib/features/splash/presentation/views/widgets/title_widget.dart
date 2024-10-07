import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store/core/utils/routes.dart';

class TitleWidget extends StatefulWidget {
  const TitleWidget({super.key});

  @override
  State<TitleWidget> createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidget>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    triggerFadeTransition();
    toHome();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: const Center(
        child: Text(
          'ShoeShop',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w700,
            letterSpacing: 7,
          ),
        ),
      ),
    );
  }

  void triggerFadeTransition() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    animation = Tween<double>(begin: 0, end: 1).animate(controller);

    Future.delayed(
      const Duration(seconds: 3),
      () => controller.forward(),
    );
  }

  void toHome() {
    Future.delayed(
      const Duration(seconds: 5),
      () => GoRouter.of(context).pushReplacement(Routes.kHome),
    );
  }
}
