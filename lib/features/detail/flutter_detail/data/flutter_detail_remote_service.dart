import 'package:now_in_dart_flutter/features/core/data/remote_response.dart';
import 'package:now_in_dart_flutter/features/detail/core/data/detail_remote_service.dart';

typedef _FlutterDetail = Future<RemoteResponse<String>>;

class FlutterDetailRemoteService extends DetailRemoteService {
  FlutterDetailRemoteService({
    super.dio,
    super.headerCache,
  });

  _FlutterDetail getWhatsNewFlutterDetail() {
    const fullPathToMarkdownFile =
        'repos/flutter/website/contents/src/whats-new.md';
    return super.getDetail(fullPathToMarkdownFile);
  }

  _FlutterDetail getFlutterReleaseNotesDetail() {
    const fullPathToMarkdownFile =
        'repos/flutter/website/contents/src/development/tools/sdk/release-notes/index.md';
    return super.getDetail(fullPathToMarkdownFile);
  }
}
