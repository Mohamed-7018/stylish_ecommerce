import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';

/// A custom rating bar widget.
class CustomRatingBar extends StatelessWidget {
  /// Creates a custom rating bar widget.
  const CustomRatingBar({
    Key? key,
    this.alignment,
    this.ignoreGestures,
    this.initialRating,
    this.itemSize,
    this.itemCount,
    this.color,
    this.unselectedColor,
    this.onRatingUpdate,
  }) : super(key: key);

  /// The alignment of the rating bar within its container.
  final Alignment? alignment;

  /// Whether gestures should be ignored on the rating bar.
  final bool? ignoreGestures;

  /// The initial rating value of the rating bar.
  final double? initialRating;

  /// The size of each rating item.
  final double? itemSize;

  /// The number of rating items.
  final int? itemCount;

  /// The color of the rated items.
  final Color? color;

  /// The color of the unrated items.
  final Color? unselectedColor;

  /// Callback function that is called when the rating is updated.
  final Function(double)? onRatingUpdate;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: ratingBarWidget,
          )
        : ratingBarWidget;
  }

  /// Builds the rating bar widget.
  Widget get ratingBarWidget => RatingBar.builder(
        ignoreGestures: ignoreGestures ?? false,
        initialRating: initialRating ?? 0,
        minRating: 0,
        direction: Axis.horizontal,
        allowHalfRating: false,
        itemSize: itemSize ?? 14.vertical,
        unratedColor: unselectedColor,
        itemCount: itemCount ?? 5,
        updateOnDrag: true,
        itemBuilder: (
          context,
          _,
        ) {
          return Icon(
            Icons.star,
            color: color,
          );
        },
        onRatingUpdate: (rating) {
          onRatingUpdate!.call(rating);
        },
      );
}
