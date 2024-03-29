import 'package:dartz/dartz.dart';
import 'package:e_books/core/errors/failures.dart';
import 'package:e_books/core/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetshNewestItem();
  Future<Either<Failure, List<BookModel>>> fetshFeaturedBook();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
