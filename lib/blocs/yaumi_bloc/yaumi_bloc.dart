import 'package:bloc/bloc.dart';
import 'package:bloc_practice/models/yaumi_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

part 'yaumi_event.dart';
part 'yaumi_state.dart';

class YaumiBloc extends Bloc<YaumiEvent, YaumiState> {
  YaumiBloc() : super(const YaumiState()) {
    on<AddYaumiEvent>(_onAddYaumiEvent);
    on<UpdateShubuhEvent>(_onUpdateEvent);
    on<UpdateDhuhurEvent>(_onUpdateEvent);
    on<UpdateAsharEvent>(_onUpdateEvent);
    on<UpdateMaghribEvent>(_onUpdateEvent);
    on<UpdateIsyaEvent>(_onUpdateEvent);
    on<UpdateTahajudEvent>(_onUpdateEvent);
    on<UpdateRawatibEvent>(_onUpdateEvent);
    on<UpdateDhuhaEvent>(_onUpdateEvent);
    on<UpdateIncrementTilawahEvent>(_onUpdateEvent);
    on<UpdateDecrementTilawahEvent>(_onUpdateEvent);
    on<UpdateShaumEvent>(_onUpdateEvent);
    on<UpdateSedekahEvent>(_onUpdateEvent);
    on<UpdateDzikirPagiEvent>(_onUpdateEvent);
    on<UpdateDzikirPetangEvent>(_onUpdateEvent);
    on<UpdateTaklimEvent>(_onUpdateEvent);
    on<UpdateIstighfarEvent>(_onUpdateEvent);
    on<UpdateShalawatEvent>(_onUpdateEvent);
    on<DeleteYaumiEvent>(_onDeleteYaumiEvent);
  }

  void _onAddYaumiEvent(AddYaumiEvent event, Emitter<YaumiState> emit) {
    final state = this.state;
    emit(YaumiState(allYaumis: List.from(state.allYaumis)..add(event.yaumi)));
  }

  void _onUpdateEvent(dynamic event, Emitter<YaumiState> emit) {
    final state = this.state;
    final yaumi = event.yaumi;
    List<YaumiModel> allYaumis = List.from(state.allYaumis)..remove(yaumi);
    switch (event.runtimeType) {
      case UpdateShubuhEvent:
        allYaumis.add(yaumi.copyWith(shubuh: !(yaumi.shubuh)));
        break;
      case UpdateDhuhurEvent:
        allYaumis.add(yaumi.copyWith(dhuhur: !(yaumi.dhuhur)));
        break;
      case UpdateAsharEvent:
        allYaumis.add(yaumi.copyWith(ashar: !(yaumi.ashar)));
        break;
      case UpdateMaghribEvent:
        allYaumis.add(yaumi.copyWith(maghrib: !(yaumi.maghrib)));
        break;
      case UpdateIsyaEvent:
        allYaumis.add(yaumi.copyWith(isya: !(yaumi.isya)));
        break;
      case UpdateTahajudEvent:
        allYaumis.add(yaumi.copyWith(tahajud: !(yaumi.tahajud)));
        break;
      case UpdateRawatibEvent:
        allYaumis.add(yaumi.copyWith(rawatib: !(yaumi.rawatib)));
        break;
      case UpdateDhuhaEvent:
        allYaumis.add(yaumi.copyWith(dhuha: !(yaumi.dhuha)));
        break;
      case UpdateIncrementTilawahEvent:
        if (yaumi.tilawah < 10) {
          yaumi.tilawah++;
          allYaumis.add(yaumi.copyWith(tilawah: yaumi.tilawah));
        } else {
          return;
        }
        break;
      case UpdateDecrementTilawahEvent:
        if (yaumi.tilawah > 0) {
          yaumi.tilawah--;
          allYaumis.add(yaumi.copyWith(tilawah: yaumi.tilawah));
        } else {
          return;
        }
        break;
      case UpdateShaumEvent:
        allYaumis.add(yaumi.copyWith(shaum: !(yaumi.shaum)));
        break;
      case UpdateSedekahEvent:
        allYaumis.add(yaumi.copyWith(sedekah: !(yaumi.sedekah)));
        break;
      case UpdateDzikirPagiEvent:
        allYaumis.add(yaumi.copyWith(dzikirPagi: !(yaumi.dzikirPagi)));
        break;
      case UpdateDzikirPetangEvent:
        allYaumis.add(yaumi.copyWith(dzikirPetang: !(yaumi.dzikirPetang)));
        break;
      case UpdateTaklimEvent:
        allYaumis.add(yaumi.copyWith(taklim: !(yaumi.taklim)));
        break;
      case UpdateIstighfarEvent:
        allYaumis.add(yaumi.copyWith(istighfar: !(yaumi.istighfar)));
        break;
      case UpdateShalawatEvent:
        allYaumis.add(yaumi.copyWith(shalawat: !(yaumi.shalawat)));
        break;
      default:
        break;
    }
    emit(YaumiState(allYaumis: allYaumis));
  }

  void _onDeleteYaumiEvent(DeleteYaumiEvent event, Emitter<YaumiState> emit) {}
}
