import 'package:flutter/material.dart';
import 'package:store/core/utils/styles.dart';
import 'package:store/features/search/presentation/views/widgets/filter_selections_widget.dart';

class FilterWidget {
  void showModal(BuildContext context) {
    showModalBottomSheet(
      constraints: BoxConstraints.tight(const Size.fromHeight(340)),
      context: context,
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 12),
            Container(
              height: 4,
              width: 48,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Sort by',
              style: Styles.style22,
            ),
            const SizedBox(height: 20),
            const FilterSelectionsWidget(
            )
          ],
        );
      },
    );
  }
}
