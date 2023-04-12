part of 'yaumi_bloc.dart';

class YaumiState extends Equatable {
  final bool fardhu;
  const YaumiState({required this.fardhu});

  @override
  List<Object> get props => [fardhu];
}

class YaumiInitial extends YaumiState {
  const YaumiInitial() : super(fardhu: false);
}
