import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class AgendaModels {
  final String id;
  final String mapel;
  final String materi;
  final String waktu;
  final String guru;
  final Color warna;

  AgendaModels({
    required this.id,
    required this.mapel,
    required this.materi,
    this.waktu = "15 menit lagi",
    required this.guru,
    required this.warna,
  });
}

final fakedata = [
  AgendaModels(
    id: 'agenda-tag-1',
    mapel: 'Bahasa Indonesia',
    materi: 'Teks Pidato',
    guru: 'SY',
    warna: kPrimaryColor,
  ),
  AgendaModels(
    id: 'agenda-tag-2',
    mapel: 'Basis Data',
    materi: 'Subquery',
    guru: 'DS',
    warna: Color(0xffFF738C),
  ),
  AgendaModels(
    id: 'agenda-tag-3',
    mapel: 'Matematika',
    materi: 'Turunan',
    guru: 'AE',
    warna: Color(0xff58A560),
  ),
  AgendaModels(
    id: 'agenda-tag-4',
    mapel: 'Bahasa Inggris',
    materi: 'Past Tense',
    guru: 'TA',
    warna: Color(0xfffFFDAC4),
  ),
];
