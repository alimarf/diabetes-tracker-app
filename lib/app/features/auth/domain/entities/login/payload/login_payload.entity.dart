// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_payload.entity.freezed.dart';
part 'login_payload.entity.g.dart';

@freezed
class LoginPayload with _$LoginPayload {
  factory LoginPayload({
    @JsonKey(name: 'email')
    String? email,
    @JsonKey(name: 'password')
    String? password,
  }) = _LoginPayload;

  factory LoginPayload.fromJson(Map<String, dynamic> json) => _$LoginPayloadFromJson(json);
}