part of 'flutter_detail_bloc.dart';

enum FlutterDetailStatus { initial, loading, success, failure }

class FlutterDetailState extends Equatable {
  const FlutterDetailState({
    this.status = FlutterDetailStatus.initial,
    this.detail = const Fresh.yes(entity: null),
  });

  final FlutterDetailStatus status;
  final Fresh<Detail?> detail;

  FlutterDetailState copyWith({
    FlutterDetailStatus? status,
    Fresh<Detail?>? detail,
  }) {
    return FlutterDetailState(
      status: status ?? this.status,
      detail: detail ?? this.detail,
    );
  }

  @override
  List<Object?> get props => [status, detail];
}
