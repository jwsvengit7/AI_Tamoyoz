import 'package:fpdart/fpdart.dart';

import '../exceptions.dart';

typedef AsyncEitherFailureOr<AnyType> = Future<Either<Failure, AnyType>>;
typedef EitherFailureOr<AnyType> = TaskEither<Failure, AnyType>;
typedef EitherFailureOrUnit = TaskEither<Failure, Unit>;
