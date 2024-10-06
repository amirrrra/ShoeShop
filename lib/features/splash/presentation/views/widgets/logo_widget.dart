import 'package:flutter/material.dart';
import 'package:store/core/utils/constants.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({super.key});

  @override
  State<LogoWidget> createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> with SingleTickerProviderStateMixin {
  late Animation<Alignment> animation;
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
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
            Constants().logo,
            width: 135,
          ),
        ),
      ],
    );
  }
}
