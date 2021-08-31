import 'package:avenue_demo/core/core.dart';
import 'package:avenue_demo/features/post_times/domain/domain.dart';
import 'package:avenue_demo/features/post_times/presentation/blocs/blocs.dart';
import 'package:avenue_demo/injection_container.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostTimeBloc extends Bloc<PostTimeEvent, PostTimeState> {
  PostTimeBloc() : super(Initial());

  @override
  Stream<PostTimeState> mapEventToState(PostTimeEvent event) async* {
    PostTimeRepository postTimeRepository = locator.get<PostTimeRepository>();
    switch (event) {
      case PostTimeEvent.Get:
        Either<Failure, List<PostTime>> result =
            await postTimeRepository.getPostTimes();
        yield result.fold(
          (l) => Failed(message: l.reason),
          (r) => Succeeded(postTimes: r),
        );
        break;
    }
  }
}
