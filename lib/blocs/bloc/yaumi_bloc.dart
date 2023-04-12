import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'yaumi_event.dart';
part 'yaumi_state.dart';

class YaumiBloc extends Bloc<YaumiEvent, YaumiState> {
  YaumiBloc() : super(YaumiInitial()) {
    on<ToogleFardhuEvent>((event, emit) {
      var fardhu = state.fardhu;
      fardhu = !fardhu;
      emit(YaumiState(fardhu: fardhu));
    });
  }
}
