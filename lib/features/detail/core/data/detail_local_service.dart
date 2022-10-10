import 'package:isar/isar.dart';
import 'package:meta/meta.dart';
import 'package:now_in_dart_flutter/core/data/data.dart';
import 'package:now_in_dart_flutter/features/detail/core/data/detail_dto.dart';

abstract class DetailLocalService {
  DetailLocalService({
    IsarDatabase? isarDb,
  }) : _isarDb = isarDb ?? IsarDatabase();

  final IsarDatabase _isarDb;

  Isar get _isar => _isarDb.instance;

  @protected
  Future<void> upsertDetail(DetailDTO detailDTO) async {
    await _isar.writeTxn<int>(
      () => _isar.detailDTOs.put(detailDTO),
      silent: true,
    );
  }

  @protected
  Future<DetailDTO?> getDetail(int id) {
    return _isar.detailDTOs.get(id);
  }
}
