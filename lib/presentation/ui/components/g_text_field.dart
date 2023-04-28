// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:gallery_app/presentation/ui/styles/colors.dart' as colors;

class GFieldText extends StatelessWidget {
  final Iterable<String>? autofillHints;
  final bool autofocus;
  final bool? enabled,
      enableInteractiveSelection,
      enableSuggestions,
      hasError,
      isRequired,
      obscureText,
      readOnly;
  final EdgeInsets? padding;
  final FocusNode? focusNode;
  final int? maxLength;

  final List<TextInputFormatter>? inputFormatters;
  final String? errorText, hintText, labelText;
  final String? Function(String?)? onValidated;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final Widget? prefixWidget, suffixWidget;

  const GFieldText({
    super.key,
    this.autofillHints,
    this.autofocus = false,
    this.controller,
    this.enabled = true,
    this.enableInteractiveSelection = true,
    this.enableSuggestions,
    this.errorText,
    this.focusNode,
    this.hasError,
    this.hintText,
    this.inputFormatters,
    this.isRequired,
    this.labelText,
    this.maxLength,
    this.obscureText,
    this.onChanged,
    this.onTap,
    this.onValidated,
    this.padding,
    this.prefixWidget,
    this.readOnly,
    this.textInputType,
    this.textInputAction,
    this.suffixWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: TextFormField(
        autofillHints: autofillHints,
        autofocus: autofocus,
        controller: controller,
        cursorColor: colors.brand,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: prefixWidget,
          suffixIcon: suffixWidget,
        ),
        enabled: enabled,
        enableInteractiveSelection: enableInteractiveSelection,
        enableSuggestions: enableSuggestions ?? true,
        focusNode: focusNode,
        inputFormatters: inputFormatters,
        keyboardType: textInputType,
        maxLength: maxLength,
        obscureText: obscureText ?? false,
        onChanged: onChanged,
        onTap: onTap,
        readOnly: readOnly ?? false,
        textInputAction: textInputAction,
        validator: onValidated,
      ),
    );
  }
}
