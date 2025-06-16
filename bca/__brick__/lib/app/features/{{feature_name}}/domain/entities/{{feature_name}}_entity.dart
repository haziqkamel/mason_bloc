import 'package:freezed_annotation/freezed_annotation.dart';

part '{{feature_name}}_request.g.dart';
part '{{feature_name}}.freezed.dart';

@freezed
class {{feature_name}}Request with _${{feature_name}}Request {
  const factory {{feature_name}}Request({
    required String email,
    required String password,
    @JsonKey(name: 'player_id') String? playerId,
  }) = _{{feature_name}}Request;

  factory {{feature_name}}Request.fromJson(Map<String, Object?> json) =>
      _${{feature_name}}RequestFromJson(json);
}
