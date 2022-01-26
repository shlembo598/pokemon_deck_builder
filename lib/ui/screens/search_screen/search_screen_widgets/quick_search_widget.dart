import 'package:flutter/material.dart';
import 'package:pokemon_deck_builder/data/utils/constants.dart';
import 'package:pokemon_deck_builder/ui/widgets/custom_fb_text_field_widget.dart';

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
          CustomFBTextFieldWidget(
            label: 'Search by name',
            errorText: 'The field cannot be empty',
            name: FormNames.searchByName.name,
          ),
        ],
      ),
    );
  }
}
