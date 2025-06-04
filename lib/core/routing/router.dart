import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/features/auth/presentation/manager/login/login_bloc.dart';
import 'package:ayol_uchun/features/auth/presentation/manager/sign_up/sign_up_bloc.dart';
import 'package:ayol_uchun/features/auth/presentation/pages/login_view.dart';
import 'package:ayol_uchun/features/auth/presentation/pages/sign_up/otp.dart';
import 'package:ayol_uchun/features/auth/presentation/pages/sign_up/passwords_view.dart';
import 'package:ayol_uchun/features/auth/presentation/pages/sign_up/phone_number_view.dart';
import 'package:ayol_uchun/features/auth/presentation/pages/sign_up/sign_up_view.dart';
import 'package:ayol_uchun/features/home/presentation/manager/home_bloc.dart';
import 'package:ayol_uchun/features/home/presentation/pages/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../main.dart';

final GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: Routes.login,
      builder: (context, state) => BlocProvider(
        create: (context) => LoginBloc(repo: context.read()),
        child: LoginView(),
      ),
    ),
    ShellRoute(
      builder: (context, state, child) => Provider(
        create: (context) => SignUpBloc(repo: context.read()),
        child: child,
      ),
      routes: [
        GoRoute(path: Routes.signUp, builder: (context, state) => SignUpView()),
        GoRoute(
          path: Routes.phoneNumber,
          builder: (context, state) => PhoneNumberView(),
        ),
        GoRoute(path: Routes.otp, builder: (context, state) => OtpView()),
        GoRoute(
          path: Routes.passwords,
          builder: (context, state) => PasswordsView(),
        ),
      ],
    ),
    GoRoute(
      path: Routes.home,
      builder: (context, state) => BlocProvider(
        create: (context) => HomeBloc(
          authRepo: context.read(),
          categoryRepo: context.read(),
          courseRepo: context.read(),
          socialAccountRepo: context.read(),
          interviewRepo: context.read(),
        ),
        child: HomeView(),
      ),
    ),
  ],
);
