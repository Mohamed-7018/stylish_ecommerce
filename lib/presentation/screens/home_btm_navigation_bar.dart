import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:stylish_ecommerce/core/di/get_initializer.dart';
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/buisness_logic/banners/banners_vm_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/banners/get_banners_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/categories/get_categories_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/home_data/get_home_data_cubit.dart';
import 'package:stylish_ecommerce/presentation/screens/home_page/home_screen.dart';


/// Widget for displaying the bottom navigation bar on the home page.
class HomePageButtomnavigationBar extends StatefulWidget {
  const HomePageButtomnavigationBar({super.key});

  @override
  State<HomePageButtomnavigationBar> createState() =>
      _HomePageButtomnavigationBarState();
}

class _HomePageButtomnavigationBarState
    extends State<HomePageButtomnavigationBar> {
  dynamic selected;
  PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  List<Widget> screens = [
    MultiBlocProvider(
      providers: [
        BlocProvider<GetCategriesCubit>(
          create: (cotext) => GetCategriesCubit(
            getIt(),
          ),
        ),
        BlocProvider<GetBannersCubit>(
          create: (context) => GetBannersCubit(
            getIt(),
          ),
        ),
        BlocProvider<BannersViewModel>(
          create: (context) => BannersViewModel(),
        ),
        BlocProvider<GetHomeDataCubit>(
          create: (context) => GetHomeDataCubit(getIt()),
        ),
      ],
      child: const HomePage(),
    ),
    const Scaffold(
      body: Center(
        child: Text('comming Soon'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('comming Soon'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('comming Soon'),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, //to make floating action button notch transparent

      bottomNavigationBar: StylishBottomBar(
        option: AnimatedBarOptions(
          // iconSize: 32,
          barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.Default,
          // opacity: 0.3,
        ),
        items: [
          BottomBarItem(
            icon: ImageIcon(
              AssetImage(GlobalAppImages.imgNavHome),
            ),
            selectedIcon: const Icon(Icons.house_rounded),
            selectedColor: GlobalAppColors.red60001,
            unSelectedColor: GlobalAppColors.black90002,
            title:  Text("lbl_home".tr),
          ),
          BottomBarItem(
            icon: ImageIcon(
              AssetImage(GlobalAppImages.imgNavWishlist),
            ),
            selectedColor: GlobalAppColors.red60001,
            unSelectedColor:
                GlobalAppColors.black90002, // unSelectedColor: Colors.purple,
            // backgroundColor: Colors.orange,
            title:  Text("lbl_wishlist".tr),
          ),
          BottomBarItem(
              icon: ImageIcon(
              AssetImage(GlobalAppImages.imgNavSearch),
            ),
              
              // backgroundColor: Colors.amber,
              selectedColor: GlobalAppColors.red60001,
              unSelectedColor: GlobalAppColors.black90002,
              title:  Text("lbl_search".tr)),
          BottomBarItem(
             icon: ImageIcon(
              AssetImage(GlobalAppImages.imgNavSetting),
            ),
              // backgroundColor: Colors.purpleAccent,
              selectedColor: GlobalAppColors.red60001,
              unSelectedColor: GlobalAppColors.black90002,
              title:  Text("lbl_setting".tr)),
        ],

        borderRadius: GlobalAppRadius.circleBorder48,
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: selected ?? 0,
        onTap: (index) {
          controller.jumpToPage(index);
          setState(() {
            selected = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.white,
        child: ImageIcon(
          AssetImage(GlobalAppImages.imgShoppingCart2),
          color: GlobalAppColors.black90002,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: screens,
        ),
      ),
    );
  }
}
