import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store/features/home/presentation/view%20models/models/brand_model.dart';
import 'package:store/features/home/presentation/views/widgets/brand_widget.dart';

class BrandGridviewWidget extends StatelessWidget {
  const BrandGridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount:BrandsData.brandsList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        // mainAxisSpacing: 28,
        crossAxisSpacing: 16,
        childAspectRatio: 3/4
      ),
      itemBuilder: (BuildContext context, int index) {
        return BrandWidget(
          brandModel: BrandsData.brandsList[index],
        );
      },
    );
  }
}
