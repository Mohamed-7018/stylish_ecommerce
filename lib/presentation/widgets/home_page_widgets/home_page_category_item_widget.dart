// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/model/caegories/categories_model.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';

/// Widget for displaying a category item on the home page.
class HomePageCategoryItemWidget extends StatelessWidget {
  /// The data of the category to display.
  final CategoryData categoryData;

  const HomePageCategoryItemWidget({Key? key, required this.categoryData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.vertical,),
      width: 58.horizontal,
      height: 71.vertical,
      child: InkWell(
        onTap: () {
          // Action to perform when the category item is tapped
        },
        child: Column(
          children: [
            ClipOval(
              child: CustomImageView(
                imagePath: categoryData.image,
                width: 56.vertical,
                height: 56.vertical,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 4.vertical,),
            Text(
              categoryData.name!,
              style: CustomTextStyles.bodySmallOnPrimary,
            )
          ],
        ),
      ),
    );
  }
}
