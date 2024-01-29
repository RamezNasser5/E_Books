import 'package:dartz/dartz.dart';
import 'package:e_books/core/errors/failures.dart';
import 'package:e_books/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetshBestSellerItem();
  Future<Either<Failure, List<BookModel>>> fetshFeaturedBook();
}
