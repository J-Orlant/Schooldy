import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class AgendaModels {
  final String id;
  final String mapel;
  final String materi;
  final String waktu;
  final String guru;
  final Color warna;
  final bool expired;

  AgendaModels({
    required this.id,
    required this.mapel,
    required this.materi,
    this.waktu = "9:00 - 10.30",
    required this.guru,
    required this.warna,
    required this.expired,
  });
}

final fakedata = [
  AgendaModels(
    id: 'agenda-tag-1',
    mapel: 'Bahasa Indonesia',
    materi: 'Teks Pidato',
    guru: 'SY',
    warna: kPrimaryColor,
    expired: false,
  ),
  AgendaModels(
    id: 'agenda-tag-2',
    mapel: 'Basis Data',
    materi: 'Subquery',
    guru: 'DS',
    warna: Color(0xffFF738C),
    expired: true,
  ),
  AgendaModels(
    id: 'agenda-tag-3',
    mapel: 'Matematika',
    materi: 'Turunan',
    guru: 'AE',
    warna: Color(0xff58A560),
    expired: true,
  ),
  AgendaModels(
    id: 'agenda-tag-4',
    mapel: 'Bahasa Inggris',
    materi: 'Past Tense',
    guru: 'TA',
    warna: Color(0xfffFFDAC4),
    expired: true,
  ),
];
