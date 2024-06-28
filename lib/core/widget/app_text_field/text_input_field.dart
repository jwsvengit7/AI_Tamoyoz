part of 'text_field.dart';

class TextInputField extends StatelessWidget {
  /// if the text field is disabled
  final bool disabled;

  /// if the text field is readonly
  final bool readonly;

  /// if the text field is autofocus
  final bool autofocus;

  /// the text controller that controls the text field
  final TextController textController;

  /// the label text of the text field
  final String? labelText;

  /// the hint text of the text field
  final String? hintText;

  /// the hint style of the text field
  final TextStyle? hintStyle;

  /// the text input action
  final TextInputAction? textInputAction;

  /// the function that is called when the text field's text is submitted
  final VoidCallback? onEditingComplete;

  /// the type of the text field [TextFieldType] ,
  ///
  /// e.g TextFieldType.normal, TextFieldType.email, TextFieldType.phone etc
  final TextFieldType type;

  /// the suffix widget, You shouldn't pass this ideally,
  ///
  /// pass a text field to get auto get the suffix
  ///
  /// Use if only you need a custom field that is not defined in the [TextFieldType],
  final Widget? suffix;

  /// the prefix widget, You shouldn't pass this ideally,
  ///
  /// pass a text field to get auto get the suffix
  ///
  /// Use if only you need a custom field that is not defined in the [TextFieldType],
  final Widget? prefix;

  /// a function that is called when the text field's text changes
  final Function(String?)? onChanged;

  /// Maximum lines
  final int? maxLength;

  final List<TextInputFormatter>? inputFormatters;

  final bool? obscureText;

  final ValueSetter<Offset>? handleMenuTap;

  final bool enabled;

  final String prefixText;

  OutlineInputBorder get _border => const OutlineInputBorder(
        borderSide: BorderSide.none,
      );

  final double borderRadius;

  final Color borderColor,
      disabledBorderColor,
      errorBorderColor,
      filledColor,
      disabledFilledColor,
      fillColor,
      hintTextColor,
      textColor;

  TextInputField({
    super.key,
    this.disabled = false,
    this.readonly = false,
    this.autofocus = false,
    required this.textController,
    this.hintStyle,
    this.labelText,
    this.textInputAction,
    this.onEditingComplete,
    this.suffix,
    this.prefix,
    this.type = TextFieldType.normal,
    this.inputFormatters,
    this.hintText,
    this.onChanged,
    this.maxLength,
    this.obscureText,
    this.handleMenuTap,
    this.enabled = true,
    this.borderColor = TamayozLoanColors.grey1,
    this.disabledBorderColor = TamayozLoanColors.grey1,
    this.filledColor = Colors.transparent,
    this.errorBorderColor = TamayozLoanColors.red1,
    this.disabledFilledColor = Colors.transparent,
    this.fillColor = TamayozLoanColors.white,
    this.hintTextColor = TamayozLoanColors.grey4,
    this.textColor = TamayozLoanColors.black1,
    this.prefixText = '',
    this.borderRadius = 16,
  }) {
    _startFocusNodeListener();
  }

  /// notifies listeners of focus node changes
  ///
  /// it is true when the focus node is focused
  final _focusNodeNotifier = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    TextInputAction? action = textInputAction;
    if (action == null && onEditingComplete == null) {
      action = TextInputAction.next;
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: ValueListenableBuilder<bool>(
            valueListenable: textController.showPasswordNotifier,
            builder: (context, showPassword, child) {
              return Center(
                child: TextField(
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.start,
                  readOnly: readonly,
                  autofocus: autofocus,
                  controller: textController.controller,
                  focusNode: textController.focusNode,
                  onChanged: onChanged,
                  textInputAction: action,
                  maxLength: maxLength,
                  keyboardType: _inputType,
                  enabled: enabled,
                  onEditingComplete: () {
                    FocusScope.of(context).nextFocus();
                    onEditingComplete?.call();
                  },
                  decoration: InputDecoration(
                    enabled: enabled,
                    fillColor: fillColor,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: borderColor, width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(borderRadius),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: borderColor, width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(borderRadius),
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: disabledBorderColor, width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(borderRadius),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: errorBorderColor, width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(borderRadius),
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: errorBorderColor, width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(borderRadius),
                      ),
                    ),
                    counterText: '',
                    hintText: hintText,
                    hintStyle: hintStyle ??
                        TextStyle(
                          color: hintTextColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                    prefix: _buildPrefixIcon(context),
                    // prefixText: prefixText,
                    suffixIcon: _buildSuffix(context, showPassword),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 45.w,
                      vertical: 32.h,
                    ),
                  ),
                  obscureText: obscureText ??
                      _is(TextFieldType.password) && !showPassword,
                  obscuringCharacter: '*',
                  maxLines: _is(TextFieldType.long) ? 10 : 1,
                  inputFormatters: _inputFormatters(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  List<TextInputFormatter> _inputFormatters() {
    final items = inputFormatters ?? [];

    if (_is(TextFieldType.phone)) {
      items.add(MaskTextInputFormatter(
        mask: '### #### ####',
        filter: {
          '#': RegExp(r'[0-9]'),
        },
      ));
    }

    if (_is(TextFieldType.amount)) {
      items.addAll(
        [
          FilteringTextInputFormatter.digitsOnly,
          FilteringTextInputFormatter.allow(RegExp(r'^\d+$')),
        ],
      );
    }

    return items;
  }

  TextInputType? get _inputType {
    if (_is(TextFieldType.email)) return TextInputType.emailAddress;

    if (_is(TextFieldType.number) ||
        _is(TextFieldType.amount) ||
        _is(TextFieldType.phone) ||
        _is(TextFieldType.accountNumber) ||
        _is(TextFieldType.pin)) {
      return TextInputType.number;
    }

    return null;
  }

  bool _is(TextFieldType type) => this.type == type;

  Widget _buildSuffix(BuildContext context, bool showPassword) {
    if (suffix != null) {
      return AnimatedContainer(
        curve: Curves.bounceIn,
        duration: const Duration(milliseconds: 1),
        padding: const EdgeInsets.only(left: 15),
        child: suffix,
      );
    }

    if (_is(TextFieldType.password)) {
      return GestureDetector(
        onTap: () {
          textController.showPasswordNotifier.value = !showPassword;
        },
        child: AnimatedContainer(
          curve: Curves.bounceIn,
          duration: const Duration(milliseconds: 1),
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: showPassword
              ? const Icon(
                  Icons.visibility_off,
                  color: TamayozLoanColors.grey4,
                )
              : const Icon(
                  Icons.visibility,
                  color: TamayozLoanColors.grey4,
                ),
        ),
      );
    }

    return const SizedBox.shrink();
  }

  Widget _buildPrefixIcon(BuildContext context) {
    if (prefix != null) {
      return AnimatedContainer(
        curve: Curves.bounceIn,
        duration: const Duration(milliseconds: 1),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: prefix,
      );
    }

    if (_is(TextFieldType.amount)) {
      return AnimatedContainer(
        curve: Curves.bounceIn,
        duration: const Duration(milliseconds: 1),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: const SizedBox(
          width: 20,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '₦',
              style: TextStyle(
                color: TamayozLoanColors.grey4,
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
          ),
        ),
      );
    }

    return const SizedBox.shrink();
  }

  void _startFocusNodeListener() {
    textController.focusNode.addListener(() {
      _focusNodeNotifier.value = textController.focusNode.hasFocus;
    });
  }
}
