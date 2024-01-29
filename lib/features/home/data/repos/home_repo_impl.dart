import 'package:dartz/dartz.dart';
import 'package:e_books/core/errors/failures.dart';
import 'package:e_books/core/utils/api_services.dart';
import 'package:e_books/features/home/data/models/book_model/book_model.dart';
import 'package:e_books/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetshNewestItem() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?q=programming&Filtring=free-ebooks&sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServiceFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetshFeaturedBook() {
    // TODO: implement fetshFeaturedBook
    throw UnimplementedError();
  }
}
