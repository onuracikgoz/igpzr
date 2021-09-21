import 'package:flutter/material.dart';

/*
FormInputFieldWithIcon(
                controller: _email,
                iconPrefix: Icons.link,
                labelText: 'Post URL',
                validator: Validator.notEmpty,
                keyboardType: TextInputType.multiline,
                minLines: 3,
                onChanged: (value) => print('changed'),
                onSaved: (value) => print('implement me'),
              ),
*/

class FormInputFieldWithIconWidget extends StatelessWidget {
  const FormInputFieldWithIconWidget(
      {this.controller,
      required this.iconPrefix,
      required this.labelText,
      this.validator,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.minLines = 1,
      this.maxLines,
      this.onChanged,
      this.onSaved,
      this.onTap,
      this.readOnly = false,
      this.textCapitalization,
      this.next,
      this.fieldFocusNode,
      this.maxLenght,
      this.onPrefixTap,
      this.onSuffixTap,
      this.errorText,
      this.iconSuffix});

  final TextEditingController? controller;
  final String? errorText;
  final IconData iconPrefix;
  final IconData? iconSuffix;
  final String labelText;
  final String? Function(String?)? validator;
  final TextCapitalization? textCapitalization;
  final TextInputType keyboardType;
  final TextInputAction? next;
  final bool obscureText;
  final bool readOnly;
  final int? minLines;
  final int? maxLines;
  final int? maxLenght;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final void Function()? onTap;
  final void Function()? onPrefixTap;
  final void Function()? onSuffixTap;
  final FocusNode? fieldFocusNode;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          TextFormField(
            focusNode: fieldFocusNode,
            decoration: InputDecoration(
                errorText: errorText,
                //  filled: true,
                prefixIcon: Icon(iconPrefix),
                // suffixIcon: IconButton(
                //   icon: const Icon(
                //     Icons.help_outline,
                //     color: Colors.amber,
                //   ),
                //   onPressed: onSuffixTap,
                // ),
                labelText: labelText,
                errorMaxLines: 2),
            controller: controller,
            onSaved: onSaved,
            autocorrect: false,
            enableSuggestions: false,
            textCapitalization: textCapitalization ?? TextCapitalization.none,
            onChanged: onChanged,
            textInputAction: TextInputAction.next,
            onTap: onTap,
            keyboardType: keyboardType,
            obscureText: obscureText,
            maxLength: maxLenght,
            maxLines: maxLines ?? 1,
            minLines: minLines,
            validator: validator,
            readOnly: readOnly,
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                iconSuffix,
                color: Colors.amber,
              ),
            ),
            onTap: onSuffixTap,
          ),
        ],
      ),
    );
  }
}
