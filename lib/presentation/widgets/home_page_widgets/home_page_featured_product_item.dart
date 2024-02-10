import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/model/home_data/home_data_model.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_rating_bar.dart';

/// Widget to display HomePageFeaturedProductItem on the home page.
class HomePageFeaturedProductItem extends StatelessWidget {
  /// Constructor for HomePageFeaturedProductItem.
  ///
  /// [product]: The featured product to be displayed.
  final Products product;
  const HomePageFeaturedProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170.horizontal,
      child: Container(
        decoration: GlobalAppDecoration.fillWhiteA70001.copyWith(
          borderRadius: GlobalAppRadius.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: product.image,
              height: 124.vertical,
              width: 170.horizontal,
              radius: BorderRadius.circular(
                4.horizontal,
              ),
            ),
            SizedBox(
              height: 8.vertical,
            ),
            SizedBox(
              height: 16.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.horizontal),
                child: Text(
                  product.name!,
                  style: Get.textTheme.labelLarge!.copyWith(
                     fontWeight : FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4.vertical,
            ),
            SizedBox(
              width: 162.horizontal,
              height: 32.vertical,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.horizontal),
                child: Text(
                  product.description!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmall10.copyWith(
                    height: 1.60,
                    fontWeight : FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4.vertical,
            ),
            SizedBox(
              height: 16.vertical,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.horizontal),
                child: Text(
                  '${product.price!} LE',
                  style: Get.textTheme.labelLarge,
                ),
              ),
            ),
            SizedBox(
              height: 16.vertical,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.horizontal),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${product.oldPrice} LE',
                      style: CustomTextStyles.bodySmallGray40003
                          .copyWith(decoration: TextDecoration.lineThrough),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.horizontal),
                      child: Text(
                        "${product.discount!} % Off",
                        style: CustomTextStyles.bodySmallDeeporange300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 4.vertical,
            ),
            SizedBox(
              height: 14.vertical,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.horizontal),
                child: Row(
                  children: [
                     CustomRatingBar(
                      ignoreGestures: true,
                      initialRating:( 3+ Random().nextDouble()*(5-3.0)),
                      color: GlobalAppColors.amber600,
                    ),
                    Text(
                      "${34000 + Random().nextInt(56890 - 34000 + 1)}",
                      style: CustomTextStyles.bodySmallOnPrimaryContainer,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
