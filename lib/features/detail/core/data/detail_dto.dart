import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:now_in_dart_flutter/features/detail/core/domain/detail.dart';

part 'detail_dto.g.dart';

@Collection(inheritance: false)
class DetailDTO extends Equatable {
  const DetailDTO({required this.id, required this.html});

  final Id? id;
  final String html;

  Detail toDomain() => Detail(id: id!, html: html);

  @ignore
  @override
  List<Object?> get props => [id, html];
}
