import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kksi/cubit/auth_cubit.dart';
import 'package:kksi/shared/theme.dart';
import 'package:kksi/ui/widget/custom_text_button.dart';
import 'package:kksi/ui/widget/custom_text_form.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  String? id;

  SignInPage({
    this.id,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Center(
        child: Container(
          width: 234,
          height: MediaQuery.of(context).size.height / 4,
          margin: EdgeInsets.only(
            top: 5,
            bottom: 10,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image_login.png'),
            ),
          ),
        ),
      );
    }

    Widget form() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign In',
                style: blueTextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 33,
              ),
              CustomTextForm(
                hint: 'Email',
                image: 'assets/icon_email.png',
                controller: emailController,
              ),
              SizedBox(
                height: 26,
              ),
              CustomTextForm(
                hint: 'Password',
                obsecure: true,
                image: 'assets/icon_password.png',
                controller: passwordController,
              ),

              // NOTE: Forgot Pass

              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 8),
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/forgot-pass',
                    );
                  },
                  child: Text(
                    'Forgot Password',
                    style: primaryTextStyle.copyWith(
                      decoration: TextDecoration.underline,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),

              // NOTE: Button

              BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is AuthSuccess && state.user.role == "siswa") {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/mainSiswa',
                      (route) => false,
                    );
                  } //Guru
                  else if (state is AuthSuccess && state.user.role == "guru") {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/mainGuru',
                      (route) => false,
                    );
                  } //orang tua
                  else if (state is AuthSuccess &&
                      state.user.role == "orangtua") {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/main-ortu',
                      (route) => false,
                    );
                  } else if (state is AuthFailed) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red[200],
                        content: Text(state.error),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is AuthLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return CustomTextButton(
                    margin: EdgeInsets.only(top: 54),
                    title: 'Masuk',
                    onPressed: () {
                      context.read<AuthCubit>().signIn(
                            email: emailController.text,
                            password: passwordController.text,
                          );
                      // DocumentSnapshot document;
                    },
                  );
                },
              ),

              // NOTE: Regis link
              Container(
                margin: EdgeInsets.only(top: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Are you a parent?',
                      style: greyTextStyle,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Sign Up',
                      style: blueTextStyle,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kDarkBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                logo(),
                form(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
