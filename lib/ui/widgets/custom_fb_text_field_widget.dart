import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:pokemon_deck_builder/data/utils/constants.dart';

class CustomFBTextFieldWidget extends StatelessWidget {
  final String label;
  final String name;
  final String errorText;
  const CustomFBTextFieldWidget({
    Key? key,
    required this.label,
    required this.name,
    required this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      autofocus: true,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 2,
            color: errorBorderColor,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 2,
            color: errorBorderColor,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      name: name,
      validator: FormBuilderValidators.required(
        context,
        errorText: errorText,
      ),
    );
  }
}
