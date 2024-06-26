import 'package:equatable/equatable.dart';

class GenerateTokenResponse extends Equatable {
  final String token;
  final String message;

  const GenerateTokenResponse({
    required this.token,
    required this.message,
  });

  @override
  List<Object?> get props => [
        token,
        message,
      ];
}
