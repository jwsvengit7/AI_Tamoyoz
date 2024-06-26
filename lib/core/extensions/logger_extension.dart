import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

extension ObjectX on Object {
  void log({Level? level, Error? error}) {
    if (kDebugMode) {
      // dev.log(toString());
      final caller = StackTrace.current.toString().split("\n")[1];

      final callerName =
          caller.substring(caller.indexOf(" ") + 1, caller.indexOf("("));
      final message = "$callerName: $this";
      final logger = Logger(
        level: level,
      );

      logger.log(
        level ?? Level.info,
        message,
        error: error,
        stackTrace: StackTrace.current,
      );
    }
  }
}
