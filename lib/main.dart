import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kksi/bloc/page_cubit.dart';
import 'package:kksi/ui/page/main_page.dart';
import 'package:kksi/ui/page/sign_in_page.dart';
import 'package:kksi/ui/page/splash_page.dart';

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
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          ('/'): (context) => SplashPage(),
          ('/get-started'): (context) => GetStartedPage(),
          ('/sign-in'): (context) => SignInPage(),
          ('/main'): (context) => MainPage(),
        },
      ),
    );
  }
}
