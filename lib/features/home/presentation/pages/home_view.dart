import 'package:ayol_uchun/features/common/app_added_community.dart';
import 'package:ayol_uchun/features/common/app_bottom_natigation_bar.dart';
import 'package:ayol_uchun/features/home/presentation/manager/home_bloc.dart';
import 'package:ayol_uchun/features/home/presentation/manager/home_state.dart';
import 'package:ayol_uchun/features/home/presentation/widgets/home_courses.dart';
import 'package:ayol_uchun/features/home/presentation/widgets/categories.dart';
import 'package:ayol_uchun/features/home/presentation/widgets/interviews.dart';
import 'package:ayol_uchun/features/home/presentation/widgets/social_accounts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../common/app_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) => Scaffold(
        backgroundColor: Color(0xffFAFBFC),
        extendBody: true,
        appBar: AppAppBar(
          action: "bell.svg",
          leadingTitle: (state.firstNameStatus == FieldStatus.idle)
              ? "Salom, ${state.firstName} 🌸"
              : "Salom,Foydalanuvchi 🌸",
           actionOnTap: () {
           },
        ),
        body: ListView(children: [
            HomeCourses(),
            Categories(),
            SocialAccounts(),
            Interviews(),
            AppAddedCommunity()
          ]),
        bottomNavigationBar: AppBottomNavigationBar(selectedIndex: 1) ,
      ),
    );
  }
}
