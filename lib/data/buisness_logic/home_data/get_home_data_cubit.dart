import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_ecommerce/data/buisness_logic/home_data/get_home_data_state.dart';
import 'package:stylish_ecommerce/data/model/home_data/home_data_model.dart';
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';
import 'package:stylish_ecommerce/data/repository/home_data_repo.dart';

/// Cubit responsible for fetching home data.
class GetHomeDataCubit extends Cubit<GetHomeDataState> {
  final HomeDataRepository homeDataRepository;

  /// Constructor for GetHomeDataCubit.
  ///
  /// [homeDataRepository]: Repository for accessing home data.
  GetHomeDataCubit(this.homeDataRepository) : super(const Idle()) {
    getHomeData();
  }

  /// Fetches home data.
  ///
  /// Emits [GetHomeDataState.loading] before fetching data.
  /// Emits [GetHomeDataState.success] with [HomeDataModel] if fetching is successful.
  /// Emits [GetHomeDataState.error] with [NetworkExceptions] if there's an error.
  void getHomeData() async {
    emit(const GetHomeDataState.loading());

    try {
      var data = await homeDataRepository.getHomeData();

      data.when(
        success: (HomeDataModel homeDataModel) {
          emit(GetHomeDataState.success(homeDataModel));
        },
        failure: (NetworkExceptions networkExceptions) {
          emit(GetHomeDataState.error(networkExceptions));
        },
      );
    } catch (error) {
      emit(
        GetHomeDataState.error(
          NetworkExceptions.getDioException(error),
        ),
      );
    }
  }
}
