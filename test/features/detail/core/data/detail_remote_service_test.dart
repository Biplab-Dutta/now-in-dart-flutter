import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:now_in_dart_flutter/core/data/github_header.dart';
import 'package:now_in_dart_flutter/core/data/remote_response.dart';
import 'package:now_in_dart_flutter/core/domain/failure.dart';
import 'package:test/test.dart';

import '../../../../helpers/mocks.dart';
import '../../../../helpers/register_multiple_fallback_values.dart';

void main() {
  final dio = MockDio();
  final response = MockResponse<String>();
  final headers = MockHeaders();
  final headerCache = MockHeaderCache();
  final detailRemoteService = MockDetailRemoteService(
    dio: dio,
    headerCache: headerCache,
  );

  setUpAll(() {
    registerMultipleFallbackValues([
      FakeUri(),
      FakeOptions(),
      FakeGithubHeader(),
    ]);
  });

  group(
    'DetailRemoteService |',
    () {
      const fakeGithubHeader = GithubHeader(
        id: 1,
        eTag: '12345',
        path: '/path',
      );

      test(
        'should instantiate Dio() and HeaderCache() when not injected',
        () => expect(MockDetailRemoteService(), isNotNull),
      );
      group(
        'The method `getDetail`',
        () {
          test(
            'should return right of TaskEither<Failure, RemoteResponse<String>>'
            ' i.e. ModifiedRemoteResponse if the status code is 200',
            () async {
              when(
                () => headerCache.getHeader(any()),
              ).thenReturn(Task(() async => fakeGithubHeader));

              when(() => headers.map).thenReturn(
                {
                  'ETag': ['12345'],
                },
              );

              when(() => response.statusCode).thenReturn(200);
              when(() => response.data).thenReturn('html');
              when(() => response.headers).thenReturn(headers);

              when(
                () => dio.getUri<String>(
                  any(),
                  options: any(named: 'options'),
                ),
              ).thenAnswer((_) async => response);

              when(
                () => headerCache.saveHeader(any()),
              ).thenReturn(Task(() async => unit));

              final result =
                  await detailRemoteService.getDetail(1, '/path').run();

              expect(
                result,
                right<Failure, RemoteResponse<String>>(
                  const ModifiedRemoteResponse('html'),
                ),
              );
            },
          );

          test(
            'should return right of TaskEither<Failure, RemoteResponse<String>>'
            ' i.e. UnModifiedRemoteResponse if the status code is 304',
            () async {
              when(
                () => headerCache.getHeader(any()),
              ).thenReturn(Task(() async => fakeGithubHeader));

              when(() => response.statusCode).thenReturn(304);

              when(
                () => dio.getUri<String>(
                  any(),
                  options: any(named: 'options'),
                ),
              ).thenAnswer((_) async => response);

              final result =
                  await detailRemoteService.getDetail(1, '/path').run();

              expect(
                result,
                right<Failure, RemoteResponse<String>>(
                  const UnModifiedRemoteResponse(),
                ),
              );
            },
          );

          test(
            'should return right of TaskEither<Failure, RemoteResponse<String>>'
            ' i.e. NoConnectionRemoteResponse if DioException.connectionError '
            'is thrown',
            () async {
              when(
                () => headerCache.getHeader(any()),
              ).thenReturn(Task(() async => fakeGithubHeader));

              when(
                () => dio.getUri<String>(
                  any(),
                  options: any(named: 'options'),
                ),
              ).thenThrow(
                DioException.connectionError(
                  requestOptions: RequestOptions(),
                  reason: '',
                ),
              );

              final result =
                  await detailRemoteService.getDetail(1, '/path').run();

              expect(
                result,
                right<Failure, RemoteResponse<String>>(
                  const NoConnectionRemoteResponse(),
                ),
              );
            },
          );

          test(
            'should return left of TaskEither<Failure, RemoteResponse<String>>'
            ' i.e. ApiFailure if network request is unsuccessful',
            () async {
              const errorMessage = 'Error on network request';
              when(
                () => headerCache.getHeader(any()),
              ).thenReturn(Task(() async => fakeGithubHeader));

              when(
                () => dio.getUri<String>(
                  any(),
                  options: any(named: 'options'),
                ),
              ).thenThrow(Exception());

              final result =
                  await detailRemoteService.getDetail(1, '/path').run();

              expect(
                result.match(
                  (failure) {
                    final isApiFailure = failure is ApiFailure;
                    return isApiFailure && failure.message == errorMessage;
                  },
                  (_) => false,
                ),
                isTrue,
              );
            },
          );
        },
      );
    },
  );
}
