import 'package:flutter/material.dart';

import 'loading_dialog_widget.dart';

class ProgressIndicatorPage extends StatelessWidget {
  const ProgressIndicatorPage({
    super.key,
    required this.child,
    this.isLoading = false,
    this.message = "",
  });

  final bool isLoading;
  final Widget child;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Visibility(
          visible: isLoading,
          replacement: const SizedBox.shrink(),
          child: LoadingDialogWidget(
            message: message,
          ),
        )
      ],
    );
  }
}
