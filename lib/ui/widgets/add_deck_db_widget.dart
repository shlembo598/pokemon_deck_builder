import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pokemon_deck_builder/data/blocs/deck_bloc/deck_bloc.dart';

import 'custom_fb_text_field_widget.dart';

class AddDeckFBWidget extends StatelessWidget {
  const AddDeckFBWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => const _CreateDeckDialogWidget(),
        );
      },
      child: const Icon(FontAwesomeIcons.plus),
    );
  }
}

class _CreateDeckDialogWidget extends StatefulWidget {
  const _CreateDeckDialogWidget({Key? key}) : super(key: key);

  @override
  State<_CreateDeckDialogWidget> createState() =>
      _CreateDeckDialogWidgetState();
}

class _CreateDeckDialogWidgetState extends State<_CreateDeckDialogWidget> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      contentPadding: const EdgeInsets.only(top: 10.0),
      content: FormBuilder(
        key: _formKey,
        child: SizedBox(
          width: 200,
          height: 170,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomFBTextFieldWidget(
                  label: 'Enter deck name',
                  errorText: 'The field cannot be empty',
                  name: 'deckName',
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final deckName =
                          _formKey.currentState?.fields['deckName']?.value;
                      context.read<DeckBloc>().add(DeckEvent.create(deckName));
                      Navigator.pop(context);
                    }
                  },
                  child: const Text(
                    'Create',
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
