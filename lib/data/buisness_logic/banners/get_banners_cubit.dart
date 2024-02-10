// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/data/buisness_logic/banners/get_banners_state.dart';
import 'package:stylish_ecommerce/data/model/banners/banners_model.dart';
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';
import 'package:stylish_ecommerce/data/repository/banner_repository.dart';

/// Cubit responsible for managing the state of Banners data retrieval.
class GetBannersCubit extends Cubit<GetBannersState> {
  final BannerRepository bannerRepository;

  GetBannersCubit(this.bannerRepository) : super(const Idle());

  /// Fetches the banners from the repository.
  void getBanners() async {
    emit(const GetBannersState.loading());
    try {
      var data = await bannerRepository.getBanner();
      data.when(success: (BannersModel banner) {
        emit(GetBannersState.success(banner));
      }, failure: (NetworkExceptions networkExceptions) {
        emit(GetBannersState.error(networkExceptions));
      });
    } catch (error) {
      emit(
        GetBannersState.error(
          NetworkExceptions.getDioException(error),
        ),
      );
    }
  }
}
