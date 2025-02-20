typedef ResultFuture<T> = Future<T>;

abstract class FutureUseCase<T, Params> {
  ResultFuture<T> call(Params params);
}
