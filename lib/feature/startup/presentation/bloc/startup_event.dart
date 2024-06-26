part of 'startup_bloc.dart';

@freezed
class StartupEvent with _$StartupEvent {
  const factory StartupEvent.started() = _Started;
}