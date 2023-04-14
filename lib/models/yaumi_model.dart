import 'package:equatable/equatable.dart';

class YaumiModel extends Equatable {
  final String id;
  final DateTime date;
  bool? shubuh;
  bool? dhuhur;
  bool? ashar;
  bool? maghrib;
  bool? isya;
  int? tilawah;
  YaumiModel({
    required this.id,
    required this.date,
    this.shubuh,
    this.dhuhur,
    this.ashar,
    this.maghrib,
    this.isya,
    this.tilawah,
  }) {
    shubuh ?? false;
    dhuhur ?? false;
    ashar ?? false;
    maghrib ?? false;
    isya ?? false;
    tilawah ?? 0;
  }

  @override
  List<Object?> get props =>
      [id, date, shubuh, dhuhur, ashar, maghrib, isya, tilawah];

  YaumiModel copyWith({
    String? id,
    DateTime? date,
    bool? shubuh,
    bool? dhuhur,
    bool? ashar,
    bool? maghrib,
    bool? isya,
    int? tilawah,
  }) {
    return YaumiModel(
      id: id ?? this.id,
      date: date ?? this.date,
      shubuh: shubuh ?? this.shubuh,
      dhuhur: dhuhur ?? this.dhuhur,
      ashar: ashar ?? this.ashar,
      maghrib: maghrib ?? this.maghrib,
      isya: isya ?? this.isya,
      tilawah: tilawah ?? this.tilawah,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'date': date.millisecondsSinceEpoch,
      'shubuh': shubuh,
      'dhuhur': dhuhur,
      'ashar': ashar,
      'maghrib': maghrib,
      'isya': isya,
      'tilawah': tilawah,
    };
  }

  factory YaumiModel.fromMap(Map<String, dynamic> map) {
    return YaumiModel(
      id: map['id'] as String,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      shubuh: map['shubuh'] as bool,
      dhuhur: map['dhuhur'] as bool,
      ashar: map['ashar'] as bool,
      maghrib: map['maghrib'] as bool,
      isya: map['isya'] as bool,
      tilawah: map['tilawah'] as int,
    );
  }
}
