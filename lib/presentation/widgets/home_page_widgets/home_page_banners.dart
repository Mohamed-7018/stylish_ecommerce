import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/buisness_logic/banners/banners_vm_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/banners/get_banners_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/banners/get_banners_state.dart';
import 'package:stylish_ecommerce/data/model/banners/banners_model.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_image_view.dart';

/// Widget to display banners on the home page.
class HomePageBanners extends StatelessWidget {
  const HomePageBanners({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    // Timer to automatically scroll banners every 10 seconds.
    Timer.periodic(const Duration(seconds: 10), (Timer timer) {
      if (context.read<BannersViewModel>().currentPageIndex <
          context.read<BannersViewModel>().bannersCount - 1) {
        context.read<BannersViewModel>().increasePageNumber();
      } else {
        context.read<BannersViewModel>().changeNumber(0);
      }
      pageController.animateToPage(
        context.read<BannersViewModel>().currentPageIndex,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });

    return BlocBuilder<GetBannersCubit, GetBannersState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.when(
          idle: () {
            return const CircularProgressIndicator();
          },
          loading: () {
            return const CircularProgressIndicator();
          },
          success: (data) {
            BannersModel response = data;
            context
                .read<BannersViewModel>()
                .changeBannersCounter(response.data!.length);
            return Column(
              children: [
                SizedBox(
                  height: 189.vertical,
                  width: 343.horizontal,
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: response.data!.length,
                    itemBuilder: (context, index) {
                      return CustomImageView(
                        imagePath: response.data![index].image,
                        height: 189.vertical,
                        width: 343.horizontal,
                        fit: BoxFit.fill,
                        radius: BorderRadius.circular(
                          12.horizontal,
                        ),
                        alignment: Alignment.center,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 12.vertical,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.vertical),
                  child: SizedBox(
                    height: 9.vertical,
                    child: SmoothPageIndicator(
                      controller: pageController,
                      onDotClicked: (index) {
                        context.read<BannersViewModel>().changeNumber(index);
                        pageController.jumpToPage(index);
                      },
                      count: response.data!.length,
                      effect: WormEffect(
                        spacing: 10,
                        activeDotColor: GlobalAppColors.pink30001,
                        dotColor:
                            GlobalAppColors.blueGray90001.withOpacity(0.2),
                        dotHeight: 10.vertical,
                        dotWidth: 10.horizontal,
                      ),
                    ),
                  ),
                )
              ],
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
