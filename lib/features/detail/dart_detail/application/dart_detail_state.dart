part of 'dart_detail_bloc.dart';

enum DartDetailStatus { initial, loading, success, failure }

class DartDetailState extends Equatable {
  const DartDetailState({
    this.status = DartDetailStatus.initial,
    this.detail = const Fresh.yes(entity: null),
  });

  final DartDetailStatus status;
  final Fresh<Detail?> detail;

  DartDetailState copyWith({
    DartDetailStatus? status,
    Fresh<Detail?>? detail,
  }) {
    return DartDetailState(
      status: status ?? this.status,
      detail: detail ?? this.detail,
    );
  }

  @override
  List<Object?> get props => [status, detail];
}
