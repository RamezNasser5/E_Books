import 'package:bloc/bloc.dart';
import 'package:e_books/core/models/book_model/book_model.dart';
import 'package:e_books/features/search/data/repo/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  final SearchRepo searchRepo;

  Future<void> fetchResultBooks({required String category}) async {
    emit(SearchLoading());
    var result = await searchRepo.fetchResultBooks(category: category);
    result.fold(
        (failure) => emit(SearchFailure(errorMessage: failure.errorMessage)),
        (books) => emit(SearchSuccess(books: books)));
  }
}
