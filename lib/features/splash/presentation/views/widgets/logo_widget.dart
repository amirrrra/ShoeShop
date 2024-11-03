import 'package:flutter/material.dart';
import 'package:store/core/utils/constants.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({super.key});

  @override
  State<LogoWidget> createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget>
    with SingleTickerProviderStateMixin {
  late Animation<Alignment> animation;
  late AnimationController controller;

  @override
  void initState() {
    triggerAlignTransition();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AlignTransition(
          alignment: animation,
          child: Image.asset(
            Constants.kLogo,
            width: 135,
          ),
        ),
      ],
    );
  }

  void triggerAlignTransition() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    var curvedAnimation = CurvedAnimation(
      parent: controller,
      curve: Curves.bounceOut,
    );

    animation = Tween<Alignment>(
      begin: Alignment.bottomRight,
      end: Alignment.topCenter,
    ).animate(curvedAnimation);

    controller.forward();
  }
}
