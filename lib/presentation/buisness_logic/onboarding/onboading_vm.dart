// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/buisness_logic/onboarding/onboarding_vm_cubit.dart';
import 'package:stylish_ecommerce/data/model/onboarding/onboarding_screen_model.dart';

/// The [OnboardingViewModel] is a [Cubit] responsible for managing the state and logic
/// related to the onboarding screens.
class OnboardingViewModel extends Cubit<OnboardingViewModelState> {
  /// Constructor for the [OnboardingViewModel] class.
  OnboardingViewModel() : super(OnboardingViewModelStateIntial());

  /// A list of [OnboardingScreenModel] objects representing the content of onboarding pages.
  static List<OnboardingScreenModel> onboardingPagesContent = [
    OnboardingScreenModel(
      image: GlobalAppImages.imgFashionShopRafiki,
      title: "lbl_choose_products",
      pageNumber: "lbl_one",
      description: 'msg_amet_minim_mollit',
    ),
    OnboardingScreenModel(
      image: GlobalAppImages.imgSalesConsultingPana,
      title: "lbl_make_payment",
      pageNumber: "lbl_two",
      description: 'msg_amet_minim_mollit',
    ),
    OnboardingScreenModel(
      image: GlobalAppImages.imgShoppingBagRafiki,
      title: "lbl_get_your_order",
      pageNumber: "lbl_three",
      description: 'msg_amet_minim_mollit',
    ),
  ];

  /// The current index of the onboarding page being displayed.
  int _currentPageIndex = 0;

  /// Getter for the current onboarding page index.
  int get currentPageIndex => _currentPageIndex;

  /// Increases the onboarding page index by 1.
  void increasePageNumber() {
    _currentPageIndex += 1;
    emit(OnboardingChangeIndex());
  }

  /// Decreases the onboarding page index by 1.
  void decreasePageNumber() {
    _currentPageIndex -= 1;
    emit(OnboardingChangeIndex());
  }

  /// Changes the onboarding page index to the specified [index].
  void changeNumber(int index) {
    _currentPageIndex = index;
    emit(OnboardingChangeIndex());
  }
}
