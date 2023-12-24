
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: GlobalAppColors.whiteA70001,
        resizeToAvoidBottomInset: false,
      
        body: Form(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal:  25.horizontal,
              vertical: 17.vertical,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left : 7.horizontal),
                    child: Text(
                      "lbl_welcome_back".tr(context),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Get.textTheme.displaySmall!.copyWith(
                        height: 1.19,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32.vertical,),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}