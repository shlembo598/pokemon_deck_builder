import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_screen_arguments.freezed.dart';

@freezed
class SetScreenArguments with _$SetScreenArguments {
  const factory SetScreenArguments({
    @required String? setId,
    @required String? setImageUrl,
  }) = _SetScreenArguments;
}
