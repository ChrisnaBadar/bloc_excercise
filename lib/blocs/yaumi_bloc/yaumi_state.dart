// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'yaumi_bloc.dart';

class YaumiState extends Equatable {
  final List<YaumiModel> allYaumis;
  const YaumiState({
    this.allYaumis = const <YaumiModel>[],
  });

  @override
  List<Object> get props => [allYaumis];
}
