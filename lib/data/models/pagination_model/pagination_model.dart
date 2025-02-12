import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';

@freezed
class PaginationModel<T> with _$PaginationModel<T> {
  // ignore: invalid_annotation_target
  @JsonSerializable(genericArgumentFactories: true)
  const factory PaginationModel({
    required int count,
    String? next,
    String? previous,
    required List<T> results,
  }) = _PaginationModel<T>;

  factory PaginationModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PaginationModelFromJson(json, fromJsonT);
}
