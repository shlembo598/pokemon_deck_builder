import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pokemon_deck_builder/configuration/constants.dart';

class QuickSearchWidget extends StatelessWidget {
  const QuickSearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 8.0, right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Quick search',
            style: middleText,
          ),
          const Divider(
            thickness: 2,
          ),
          FormBuilderTextField(
            // validator: FormBuilderValidators.required(context),
            name: FormNames.searchByName.name,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Theme.of(context).toggleableActiveColor,
              ),
              labelText: 'Search by name',
              labelStyle:
                  TextStyle(color: Theme.of(context).toggleableActiveColor),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Theme.of(context).toggleableActiveColor,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Theme.of(context).toggleableActiveColor,
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
            // icon: FaIcon(FontAwesomeIcons.search),
            // hintText: 'Search by Name',
          ),
        ],
      ),
    );
  }
}
