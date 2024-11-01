import 'package:flutter/material.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/styles.dart';

class FilterSelectionsWidget extends StatefulWidget {
  const FilterSelectionsWidget({super.key});

  @override
  State<FilterSelectionsWidget> createState() => _FilterSelectionsWidgetState();
}

class _FilterSelectionsWidgetState extends State<FilterSelectionsWidget> {
  List<String> options = [
    'Top Match',
    'Top Rated',
    'Lowest Price',
    'Highest Price'
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ToggleButtons(
        constraints: const BoxConstraints.expand(height: 60),
        direction: Axis.vertical,
        isSelected: List.generate(
          options.length,
          (index) => index == selectedIndex,
        ),
        onPressed: (int newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
        renderBorder: false,
        splashColor: ColorPalette.kTransparent,
        color: ColorPalette.kBlack,
        selectedColor: ColorPalette.kWhite,
        fillColor: ColorPalette.kBlueLogo,
        children: options
            .map(
              (option) => Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    option,
                    style: Styles.style16,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
