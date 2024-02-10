// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/data/buisness_logic/categories/get_categories_state.dart';
import 'package:stylish_ecommerce/data/model/caegories/categories_model.dart';
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';
import 'package:stylish_ecommerce/data/repository/categories_repo.dart';

/// Cubit responsible for managing the state of category data retrieval.
class GetCategriesCubit extends Cubit<GetCategoriesState> {
  final CategoriesRepository categoriesRepository;

  GetCategriesCubit(this.categoriesRepository) : super(const Idle()) {
    getCategories();
  }

  /// Fetches the categories from the repository.
  void getCategories() async {
    emit(const GetCategoriesState.loading());

    try {
      var data = await categoriesRepository.getCategories();

      data.when(success: (CategoriesModel category) {
        emit(GetCategoriesState.success(category));
      }, failure: (NetworkExceptions networkExceptions) {
        emit(GetCategoriesState.error(networkExceptions));
      });
    } catch (error) {
      emit(
        GetCategoriesState.error(
          NetworkExceptions.getDioException(error),
        ),
      );
    }
  }
}
