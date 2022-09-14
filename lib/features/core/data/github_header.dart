import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'github_header.g.dart';

@Collection(inheritance: false)
class GithubHeader extends Equatable {
  const GithubHeader({
    required this.eTag,
    required this.path,
  }) : id = Isar.autoIncrement;

  factory GithubHeader.parse(Response response, String path) {
    return GithubHeader(
      eTag: response.headers.map['ETag']![0],
      path: path,
    );
  }

  final String eTag;

  // We are only making `path` a property of this class because we want to make
  // a query using path value. If Isar supports key-value storage mechanism too
  // in the future, then the `path` property can be removed from this file.

  @Index(unique: true)
  final String path;

  final Id id;

  @ignore
  @override
  List<Object?> get props => [eTag, path, id];
}
