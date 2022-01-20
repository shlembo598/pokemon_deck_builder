import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

class Unit8ListConverter implements JsonConverter<Uint8List, List<int>> {
  const Unit8ListConverter();

  @override
  Uint8List fromJson(List<int> json) {
    return Uint8List.fromList(json);
  }

  @override
  List<int> toJson(Uint8List object) {
    return object.toList();
  }
}
