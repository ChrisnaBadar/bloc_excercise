import 'package:bloc/bloc.dart';
import 'package:bloc_practice/models/yaumi_model.dart';
import 'package:equatable/equatable.dart';

part 'yaumi_event.dart';
part 'yaumi_state.dart';

class YaumiBloc extends Bloc<YaumiEvent, YaumiState> {
  YaumiBloc() : super(const YaumiState()) {
    on<AddYaumiEvent>(_onAddYaumiEvent);
    on<UpdateYaumiEvent>(_onUpdateYaumiEvent);
    on<DeleteYaumiEvent>(_onDeleteYaumiEvent);
  }

  void _onAddYaumiEvent(AddYaumiEvent event, Emitter<YaumiState> emit) {
    final state = this.state;
    emit(YaumiState(allYaumis: List.from(state.allYaumis)..add(event.yaumi)));
  }

  void _onUpdateYaumiEvent(UpdateYaumiEvent event, Emitter<YaumiState> emit) {}
  void _onDeleteYaumiEvent(DeleteYaumiEvent event, Emitter<YaumiState> emit) {}
}
