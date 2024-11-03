import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/styles.dart';
import 'package:store/features/search/presentation/view%20models/cubits/filters%20cubit/filters_cubit.dart';

class FilterSelectionsWidget extends StatelessWidget {
  const FilterSelectionsWidget({super.key});

  static List<String> options = [
    'Top Match',
    'Top Rated',
    'Lowest Price',
    'Highest Price'
  ];
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FiltersCubit, int>(
      builder: (context, selectedIndex) {
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
              context.read<FiltersCubit>().getFilterSelection(newIndex);
              GoRouter.of(context).pop();
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
      },
    );
  }
}
