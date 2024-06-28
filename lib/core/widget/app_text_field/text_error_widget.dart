part of 'text_field.dart';

class _TextErrorField extends StatelessWidget {
  final ValueNotifier<String> errorNotifier;
  final bool left;

  const _TextErrorField({
    super.key,
    required this.errorNotifier,
    this.left = false,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: errorNotifier,
      builder: (context, errorMessage, child) => Align(
        alignment: left ? Alignment.centerLeft : Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            height: errorMessage.isEmpty ? 0 : 20,
            child: AnimatedOpacity(
              opacity: errorMessage.isEmpty ? 0 : 1,
              duration: const Duration(milliseconds: 400),
              child: Text(
                errorMessage,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
