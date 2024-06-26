import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'startup_event.dart';
part 'startup_state.dart';
part 'startup_bloc.freezed.dart';

class StartupBloc extends Bloc<StartupEvent, StartupState> {
  StartupBloc() : super(_Initial()) {
    on<StartupEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
