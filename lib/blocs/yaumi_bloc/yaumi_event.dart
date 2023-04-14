part of 'yaumi_bloc.dart';

abstract class YaumiEvent extends Equatable {
  const YaumiEvent();

  @override
  List<Object> get props => [];
}

class AddYaumiEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const AddYaumiEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateYaumiEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateYaumiEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class DeleteYaumiEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const DeleteYaumiEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}
