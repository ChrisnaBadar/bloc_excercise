import 'package:equatable/equatable.dart';

class ActiveYaumi extends Equatable {
  final bool? fardhu;
  final bool? tahajud;
  final bool? dhuha;
  final bool? rawatib;
  final bool? tilawah;
  final bool? shaum;
  final bool? sedekah;
  final bool? dzikir;
  final bool? taklim;
  final bool? istighfar;
  final bool? shalawat;
  ActiveYaumi({
    this.fardhu,
    this.tahajud,
    this.dhuha,
    this.rawatib,
    this.tilawah,
    this.shaum,
    this.sedekah,
    this.dzikir,
    this.taklim,
    this.istighfar,
    this.shalawat,
  }) {
    fardhu ?? false;
    tahajud ?? false;
    dhuha ?? false;
    rawatib ?? false;
    tilawah ?? false;
    shaum ?? false;
    sedekah ?? false;
    dzikir ?? false;
    taklim ?? false;
    istighfar ?? false;
    shalawat ?? false;
  }

  ActiveYaumi copyWith({
    bool? fardhu,
    bool? tahajud,
    bool? dhuha,
    bool? rawatib,
    bool? tilawah,
    bool? shaum,
    bool? sedekah,
    bool? dzikir,
    bool? taklim,
    bool? istighfar,
    bool? shalawat,
  }) {
    return ActiveYaumi(
      fardhu: fardhu ?? this.fardhu,
      tahajud: tahajud ?? this.tahajud,
      dhuha: dhuha ?? this.dhuha,
      rawatib: rawatib ?? this.rawatib,
      tilawah: tilawah ?? this.tilawah,
      shaum: shaum ?? this.shaum,
      sedekah: sedekah ?? this.sedekah,
      dzikir: dzikir ?? this.dzikir,
      taklim: taklim ?? this.taklim,
      istighfar: istighfar ?? this.istighfar,
      shalawat: shalawat ?? this.shalawat,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fardhu': fardhu,
      'tahajud': tahajud,
      'dhuha': dhuha,
      'rawatib': rawatib,
      'tilawah': tilawah,
      'shaum': shaum,
      'sedekah': sedekah,
      'dzikir': dzikir,
      'taklim': taklim,
      'istighfar': istighfar,
      'shalawat': shalawat,
    };
  }

  factory ActiveYaumi.fromMap(Map<String, dynamic> map) {
    return ActiveYaumi(
      fardhu: map['fardhu'] != null ? map['fardhu'] as bool : null,
      tahajud: map['tahajud'] != null ? map['tahajud'] as bool : null,
      dhuha: map['dhuha'] != null ? map['dhuha'] as bool : null,
      rawatib: map['rawatib'] != null ? map['rawatib'] as bool : null,
      tilawah: map['tilawah'] != null ? map['tilawah'] as bool : null,
      shaum: map['shaum'] != null ? map['shaum'] as bool : null,
      sedekah: map['sedekah'] != null ? map['sedekah'] as bool : null,
      dzikir: map['dzikir'] != null ? map['dzikir'] as bool : null,
      taklim: map['taklim'] != null ? map['taklim'] as bool : null,
      istighfar: map['istighfar'] != null ? map['istighfar'] as bool : null,
      shalawat: map['shalawat'] != null ? map['shalawat'] as bool : null,
    );
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}
