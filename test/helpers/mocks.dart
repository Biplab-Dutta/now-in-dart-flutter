import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:now_in_dart_flutter/core/data/data.dart';
import 'package:now_in_dart_flutter/features/detail/core/data/detail_remote_service.dart';

part 'fakes.dart';

class MockDio extends Mock implements Dio {}

class MockResponse extends Mock implements Response<String> {}

class MockHeaders extends Mock implements Headers {}

class MockHeaderCache extends Mock implements HeaderCache {}

class MockDetailRemoteService extends DetailRemoteService {
  MockDetailRemoteService({super.dio, super.headerCache});
}
