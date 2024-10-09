import 'package:flutter/material.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/styles.dart';

class FailureWidget extends StatelessWidget {
  final String errMessage;
  const FailureWidget({
    super.key,
    required this.errMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          const Icon(
            Icons.warning_rounded,
            color: ColorPalette.kRedLogo,
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Text(
              errMessage,
              style: Styles.style16,
              maxLines: 4,
            ),
          ),
        ],
      ),
    );
  }
}
