import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../data/blocs/deck_bloc/deck_bloc.dart';
import '../../data/utils/constants.dart';
import '../../generated/l10n.dart';
import 'custom_fb_text_field_widget.dart';

class CreateRenameDeckDialogWidget extends StatefulWidget {
  final int? deckOldId;
  const CreateRenameDeckDialogWidget({Key? key, this.deckOldId})
      : super(key: key);

  @override
  State<CreateRenameDeckDialogWidget> createState() =>
      _CreateRenameDeckDialogWidgetState();
}

class _CreateRenameDeckDialogWidgetState
    extends State<CreateRenameDeckDialogWidget> {
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
          width: 320,
          height: 190,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).decksScreen_addDeckDialogTitle,
                  style: middleText,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomFBTextFieldWidget(
                  label: 'Enter deck name',
                  errorText: 'The field cannot be empty',
                  name: 'deckName',
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    final deckBloc = context.read<DeckBloc>();
                    if (_formKey.currentState!.validate()) {
                      final deckName =
                          _formKey.currentState?.fields['deckName']?.value;
                      final int? deckOldId = widget.deckOldId;
                      deckOldId != null
                          ? deckBloc.add(DeckEvent.update(deckOldId, deckName))
                          : deckBloc.add(DeckEvent.create(deckName));
                      Navigator.pop(context);
                    }
                    deckBloc.add(const DeckEvent.read());
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
