import 'package:bloc/bloc.dart';
import 'package:e_books/features/home/data/models/book_model/book_model.dart';
import 'package:e_books/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    var result = await homeRepo.fetshFeaturedBook();
    result.fold(
        (failure) =>
            emit(FeaturedBookFailure(errorMessage: failure.errorMessage)),
        (books) => emit(FeaturedBookSuccess(books: books)));
  }
}
