import 'package:isar/isar.dart';
import 'package:now_in_dart_flutter/features/core/data/github_header.dart';
import 'package:now_in_dart_flutter/features/detail/core/data/detail_dto.dart';

class IsarDatabase {
  late Isar _instance;

  Isar get instance => _instance;

  /// Initializes the isar database.
  ///
  /// This method needs to be called before accessing any isar-specific APIs.
  Future<void> init() async {
    if (Isar.instanceNames.isNotEmpty) return;
    _instance = await Isar.open(
      [GithubHeaderSchema, DetailDTOSchema],
      inspector: false,
    );
  }
}
