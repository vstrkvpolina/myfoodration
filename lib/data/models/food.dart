import 'package:equatable/equatable.dart';

class Food extends Equatable {
  final int? id;
  final String name;
  final DateTime date;
  const Food({
    this.id,
    required this.name,
    required this.date,
  });

  @override
  List<Object> get props => [id!, name, date];
}
