import 'package:camera/camera.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:kksi/bloc/page_cubit.dart';
import 'package:kksi/bloc/tab_cubit.dart';
import 'package:kksi/cubit/auth_cubit.dart';
import 'package:kksi/providers/absensi_app.dart';
import 'package:kksi/providers/camera_save.dart';
import 'package:kksi/providers/kalender_app.dart';
import 'package:kksi/ui/page/detail_notif_page.dart';
import 'package:kksi/ui/page/detail_profil_page.dart';
import 'package:kksi/ui/page/forgot_pass_page.dart';
import 'package:kksi/ui/page/guru/detail_tugas_siswa.dart';
import 'package:kksi/ui/page/guru/kegiatan_page.dart';
import 'package:kksi/ui/page/guru/main_guru.dart';
import 'package:kksi/ui/page/guru/program_tahunan_page.dart';
import 'package:kksi/ui/page/jadwal_page.dart';
import 'package:kksi/ui/page/ortu/main_ortu.dart';
import 'package:kksi/ui/page/siswa/camera_page.dart';
import 'package:kksi/ui/page/siswa/main_page.dart';
import 'package:kksi/ui/page/notification_page.dart';
import 'package:kksi/ui/page/rapot_page.dart';
import 'package:kksi/ui/page/room_chat.dart';
import 'package:kksi/ui/page/sign_in_page.dart';
import 'package:kksi/ui/page/splash_page.dart';
import 'package:kksi/ui/page/success_forgot_page.dart';
import 'package:provider/provider.dart';

import 'ui/page/get_started_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final cameras = await availableCameras();

  runApp(MyApp(
    cameras: cameras,
  ));
}

class MyApp extends StatelessWidget {
  final List<CameraDescription> cameras;
  const MyApp({
    Key? key,
    required this.cameras,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => PageCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => TabCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<Absensi>(
            create: (BuildContext context) => Absensi(),
          ),
          ChangeNotifierProvider<Kalender>(
            create: (BuildContext context) => Kalender(),
          ),
          ChangeNotifierProvider<CameraSave>(
            create: (BuildContext context) => CameraSave(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            ('/'): (context) => SplashPage(),
            ('/get-started'): (context) => GetStartedPage(),
            ('/sign-in'): (context) => SignInPage(),
            ('/mainSiswa'): (context) => MainPageSiswa(),
            ('/notif'): (context) => NotificationPage(),
            ('/detail-notif'): (context) => DetailNotifPage(),
            ('/room-chat'): (context) => RoomChat(),
            ('/detail-profil'): (context) => DetailProfilPage(),
            ('/rapot'): (context) => RapotPage(),
            ('/jadwal'): (context) => JadwalPage(),
            ('/forgot-pass'): (context) => ForgotPassPage(),
            ('/success-forgot'): (context) => SuccessForgotPage(),
            ('/camera-page'): (context) => CameraPage(
                  cameras: cameras,
                ),
            // Guru
            ('/mainGuru'): (context) => MainGuru(),
            ('/program-tahunan'): (context) => ProgramTahunanPage(),
            ('/kegiatan-page'): (context) => KegiatanPage(),
            // Ortu
            ('/main-ortu'): (context) => MainOrtu(),
          },
        ),
      ),
    );
  }
}
