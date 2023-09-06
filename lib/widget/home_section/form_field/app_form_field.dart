import 'package:flutter/material.dart';

enum AppFormFieldType { underlined, filled, outlined }

class AppFormField extends StatelessWidget {
  final AppFormFieldType appFormFieldType;

  const AppFormField.underlined({
    super.key,
    this.appFormFieldType = AppFormFieldType.underlined,
  });

  const AppFormField.outlined({
    super.key,
    this.appFormFieldType = AppFormFieldType.outlined,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Textfield',
        border: appFormFieldType == AppFormFieldType.outlined
            ? const OutlineInputBorder()
            : null,
      ),
    );
  }
}
