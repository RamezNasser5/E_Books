import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_books/core/errors/failures.dart';
import 'package:e_books/core/models/book_model/book_model.dart';
import 'package:e_books/core/utils/api_services.dart';
import 'package:e_books/features/search/data/repo/search_repo.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiServices apiServices;

  SearchRepoImpl({required this.apiServices});
  @override
  Future<Either<Failure, List<BookModel>>> fetchResultBooks(
      {required String category}) async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?q=$category&Filtring=free-ebooks&sorting=relevance');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDioException(e));
      }
      return left(ServiceFailure(errorMessage: e.toString()));
    }
  }
}
