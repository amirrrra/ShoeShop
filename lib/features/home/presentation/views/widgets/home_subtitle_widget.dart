import 'package:flutter/material.dart';
import 'package:store/core/utils/styles.dart';

class HomeSubTitleWidget extends StatelessWidget {
  final String baseTitle;

  const HomeSubTitleWidget({
    super.key,
    required this.baseTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          baseTitle,
          style: Styles.style20,
        ),
        const Text(
          'See All',
          style: Styles.style16,
        ),
      ],
    );
  }
}
