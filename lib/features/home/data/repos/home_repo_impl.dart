import 'package:dartz/dartz.dart';
import 'package:e_books/core/errors/failures.dart';
import 'package:e_books/features/home/data/models/book_model/book_model.dart';
import 'package:e_books/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetshBestSellerItem() {}

  @override
  Future<Either<Failure, List<BookModel>>> fetshFeaturedBook() {
    // TODO: implement fetshFeaturedBook
    throw UnimplementedError();
  }
}
