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

class UpdateShubuhEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateShubuhEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateDhuhurEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateDhuhurEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateAsharEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateAsharEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateMaghribEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateMaghribEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateIsyaEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateIsyaEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateTahajudEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateTahajudEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateRawatibEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateRawatibEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateDhuhaEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateDhuhaEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateIncrementTilawahEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateIncrementTilawahEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateDecrementTilawahEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateDecrementTilawahEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateShaumEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateShaumEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateSedekahEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateSedekahEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateDzikirPagiEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateDzikirPagiEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateDzikirPetangEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateDzikirPetangEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateTaklimEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateTaklimEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateIstighfarEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateIstighfarEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class UpdateShalawatEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const UpdateShalawatEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}

class DeleteYaumiEvent extends YaumiEvent {
  final YaumiModel yaumi;

  const DeleteYaumiEvent({required this.yaumi});

  @override
  List<Object> get props => [yaumi];
}
