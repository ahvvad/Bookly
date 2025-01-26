import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failures.dart';
import '../models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchBestSellingBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}
