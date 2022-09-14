import 'package:equatable/equatable.dart';

class Detail extends Equatable {
  const Detail({
    required this.id,
    required this.html,
  });

  final int id;
  final String html;

  @override
  List<Object?> get props => [id, html];
}
