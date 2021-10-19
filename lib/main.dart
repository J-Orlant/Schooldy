import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kksi/bloc/page_cubit.dart';
import 'package:kksi/bloc/tab_cubit.dart';
import 'package:kksi/providers/absensi_app.dart';
import 'package:kksi/ui/page/detail_notif_page.dart';
import 'package:kksi/ui/page/detail_profil_page.dart';
import 'package:kksi/ui/page/jadwal_page.dart';
import 'package:kksi/ui/page/main_page.dart';
import 'package:kksi/ui/page/notification_page.dart';
import 'package:kksi/ui/page/rapot_page.dart';
import 'package:kksi/ui/page/room_chat.dart';
import 'package:kksi/ui/page/sign_in_page.dart';
import 'package:kksi/ui/page/splash_page.dart';
import 'package:provider/provider.dart';

import 'ui/page/get_started_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<Absensi>(
            create: (BuildContext context) => Absensi(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            ('/'): (context) => SplashPage(),
            ('/get-started'): (context) => GetStartedPage(),
            ('/sign-in'): (context) => SignInPage(),
            ('/main'): (context) => MainPage(),
            ('/notif'): (context) => NotificationPage(),
            ('/detail-notif'): (context) => DetailNotifPage(),
            ('/room-chat'): (context) => RoomChat(),
            ('/detail-profil'): (context) => DetailProfilPage(),
            ('/rapot'): (context) => RapotPage(),
            ('/jadwal'): (context) => JadwalPage(),
          },
        ),
      ),
    );
  }
}
