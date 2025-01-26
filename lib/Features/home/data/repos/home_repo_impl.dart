import 'package:bookly/Core/errors/failures.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellingBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
