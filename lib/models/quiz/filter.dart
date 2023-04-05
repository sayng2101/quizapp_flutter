import 'package:freezed_annotation/freezed_annotation.dart';
part 'filter.freezed.dart';

@freezed
abstract class Filter with _$Filter {
  factory Filter({
    required String genre,
    required int limit,
  }) = _Filter;
}
