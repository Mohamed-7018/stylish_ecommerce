// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/presentation/buisness_logic/banners/banners_vm_state.dart';

/// The [BannersViewModel] is a [Cubit] responsible for managing the state and logic
/// related to the banners images.
class BannersViewModel extends Cubit<BannersViewModelState> {
  /// Constructor for the [BannersViewModel] class.
  BannersViewModel() : super(BannersViewModelStateIntial());

  /// The current index of the banner being displayed.
  int _currentPageIndex = 0;

  /// Getter for the current banner index.
  int get currentPageIndex => _currentPageIndex;

  /// Increases the banner index by 1.
  void increasePageNumber() {
    _currentPageIndex += 1;
    emit(BannersViewModelStateChangeIndex());
  }

  /// Decreases the banner index by 1.
  void decreasePageNumber() {
    _currentPageIndex -= 1;
    emit(BannersViewModelStateChangeIndex());
  }

  /// Changes the banner index to the specified [index].
  void changeNumber(int index) {
    _currentPageIndex = index;
    emit(BannersViewModelStateChangeIndex());
  }

  /// The number the banner being displayed.
  int _bannersCount = 0;

  /// Getter for the current banner number.
  int get bannersCount => _bannersCount;

  /// Changes the banner number to the specified [length].
  void changeBannersCounter(int length) {
    _bannersCount = length;
    emit(BannersViewModelStateChangeIndex());
  }
}
