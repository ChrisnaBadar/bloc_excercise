// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  final bool fardhu;
  final bool tahajud;
  final bool dhuha;
  final bool rawatib;
  final bool tilawah;
  final bool shaum;
  final bool sedekah;
  final bool dzikir;
  final bool taklim;
  final bool shalawat;
  final bool istighfar;
  const SettingsState({
    required this.fardhu,
    required this.tahajud,
    required this.dhuha,
    required this.rawatib,
    required this.tilawah,
    required this.shaum,
    required this.sedekah,
    required this.dzikir,
    required this.taklim,
    required this.shalawat,
    required this.istighfar,
  });

  @override
  List<Object> get props => [
        fardhu,
        tahajud,
        dhuha,
        rawatib,
        tilawah,
        shaum,
        sedekah,
        dzikir,
        taklim,
        shalawat,
        istighfar
      ];

  SettingsState copyWith({
    bool? fardhu,
    bool? tahajud,
    bool? dhuha,
    bool? rawatib,
    bool? tilawah,
    bool? shaum,
    bool? sedekah,
    bool? dzikir,
    bool? taklim,
    bool? shalawat,
    bool? istighfar,
  }) {
    return SettingsState(
      fardhu: fardhu ?? this.fardhu,
      tahajud: tahajud ?? this.tahajud,
      dhuha: dhuha ?? this.dhuha,
      rawatib: rawatib ?? this.rawatib,
      tilawah: tilawah ?? this.tilawah,
      shaum: shaum ?? this.shaum,
      sedekah: sedekah ?? this.sedekah,
      dzikir: dzikir ?? this.dzikir,
      taklim: taklim ?? this.taklim,
      shalawat: shalawat ?? this.shalawat,
      istighfar: istighfar ?? this.istighfar,
    );
  }
}

class SettingsInitial extends SettingsState {
  const SettingsInitial()
      : super(
          fardhu: false,
          tahajud: false,
          dhuha: false,
          rawatib: false,
          tilawah: false,
          shaum: false,
          sedekah: false,
          dzikir: false,
          taklim: false,
          shalawat: false,
          istighfar: false,
        );
}
