import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/core/configs/assets/app_vector.dart';
import 'package:untitled/core/theme/app_colors.dart';
import 'package:untitled/presentation/auth/pages/signin.dart';
import 'package:untitled/presentation/splash/bloc/splash_cubit.dart';
import 'package:untitled/presentation/splash/bloc/splash_state.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const SigninPage()),
          );
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: SvgPicture.asset(
            AppVectors.appLogo,
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
