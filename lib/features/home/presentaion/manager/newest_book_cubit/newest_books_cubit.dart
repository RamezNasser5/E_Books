import 'package:bloc/bloc.dart';
import 'package:e_books/core/models/book_model/book_model.dart';
import 'package:e_books/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> newestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetshNewestItem();
    result.fold(
        (failure) =>
            emit(NewestBooksFailure(errorMessage: failure.errorMessage)),
        (books) => emit(NewestBooksSuccess(books: books)));
  }
}
