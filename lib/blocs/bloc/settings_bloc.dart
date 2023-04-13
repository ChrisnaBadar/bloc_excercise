import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsInitial()) {
    on<TooggleFardhuEvent>((event, emit) {
      var fardhu = state.fardhu;
      fardhu = !fardhu;
      emit(state.copyWith(fardhu: fardhu));
    });
    on<TooggleTahajudEvent>((event, emit) {
      var tahajud = state.tahajud;
      tahajud = !tahajud;
      emit(state.copyWith(tahajud: tahajud));
    });
    on<TooggleDhuhaEvent>((event, emit) {
      var dhuha = state.dhuha;
      dhuha = !dhuha;
      emit(state.copyWith(dhuha: dhuha));
    });
    on<TooggleRawatibEvent>((event, emit) {
      var rawatib = state.rawatib;
      rawatib = !rawatib;
      emit(state.copyWith(rawatib: rawatib));
    });
    on<TooggleTilawahEvent>((event, emit) {
      var tilawah = state.tilawah;
      tilawah = !tilawah;
      emit(state.copyWith(tilawah: tilawah));
    });
    on<TooggleShaumEvent>((event, emit) {
      var shaum = state.shaum;
      shaum = !shaum;
      emit(state.copyWith(shaum: shaum));
    });
    on<TooggleSedekahEvent>((event, emit) {
      var sedekah = state.sedekah;
      sedekah = !sedekah;
      emit(state.copyWith(sedekah: sedekah));
    });
    on<TooggleDzikirEvent>((event, emit) {
      var dzikir = state.dzikir;
      dzikir = !dzikir;
      emit(state.copyWith(dzikir: dzikir));
    });
    on<TooggleTaklimEvent>((event, emit) {
      var taklim = state.taklim;
      taklim = !taklim;
      emit(state.copyWith(taklim: taklim));
    });
    on<TooggleIstighfarEvent>((event, emit) {
      var istighfar = state.istighfar;
      istighfar = !istighfar;
      emit(state.copyWith(istighfar: istighfar));
    });
    on<TooggleShalawatEvent>((event, emit) {
      var shalawat = state.shalawat;
      shalawat = !shalawat;
      emit(state.copyWith(shalawat: shalawat));
    });
  }
}
