// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/buisness_logic/home_data/get_home_data_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/home_data/get_home_data_state.dart';
import 'package:stylish_ecommerce/data/model/home_data/home_data_model.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';
import 'package:stylish_ecommerce/presentation/widgets/home_page_widgets/home_page_featured_product_item.dart';

/// Widget to display HomePageFeaturedproducts list on the home page.
class HomePageFeaturedproducts extends StatelessWidget {
  const HomePageFeaturedproducts({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    void scrollRight() {
      scrollController.animateTo(
        scrollController.offset + 100,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 300),
      );
    }

    return BlocBuilder<GetHomeDataCubit, GetHomeDataState>(
      builder: (context, state) {
        return state.when(
          idle: () {
            return const CircularProgressIndicator();
          },
          loading: () {
            return const CircularProgressIndicator();
          },
          success: (data) {
            HomeDataModel response = data;
            return SizedBox(
              height: 241.vertical,
              child: Stack(
                children: [
                  ListView.separated(
                    controller: scrollController,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return HomePageFeaturedProductItem(
                          product: response.data!.products![index]);
                    },
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 12.0.vertical,
                      );
                    },
                    itemCount: response.data!.products!.length,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 16.horizontal),
                      child: GestureDetector(
                        onTap: ()=> scrollRight(),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: GlobalAppRadius.circleBorder48,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: CustomImageView(
                            imagePath: GlobalAppImages.imgGroup33730,
                            height: 40.vertical,
                            width: 40.horizontal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          error: (error) {
            return Text(error.toString());
          },
        );
      },
    );
  }
}
