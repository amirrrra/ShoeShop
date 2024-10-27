import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:store/core/utils/routes.dart';
import 'package:store/features/home/data/models/brand_model.dart';
import 'package:store/features/home/presentation/views/widgets/brand_widget.dart';

class BrandGridviewWidget extends StatelessWidget {
  const BrandGridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: BrandsData.brandsList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 16,
        childAspectRatio: 3 / 4,
      ),
      itemBuilder: (BuildContext context, int index) {
        return BrandWidget(
          brandModel: BrandsData.brandsList[index],
          onTap: () => GoRouter.of(context).push(
            Routes.kBrand,
            extra: BrandsData.names[index],
          ),
        );
      },
    );
  }
}
