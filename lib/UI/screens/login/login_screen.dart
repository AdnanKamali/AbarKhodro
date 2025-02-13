import 'package:abarkhodro_application/UI/common/helpers/default_app_bar.dart';
import 'package:abarkhodro_application/UI/controllers/login_bloc/login_bloc.dart';
import 'package:abarkhodro_application/UI/screens/login/widgets/form_container.dart';
import 'package:abarkhodro_application/data/usecase/login_usecase.dart';
import 'package:abarkhodro_application/injection.dart';
import 'package:abarkhodro_application/utils/assets.dart';
import 'package:abarkhodro_application/utils/constants.dart';
import 'package:abarkhodro_application/utils/device.dart';
import 'package:abarkhodro_application/utils/theme/color.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var headLineLarge = Theme.of(context).textTheme.headlineLarge;

    if (isSmartPhone(context)) {
      headLineLarge = headLineLarge!.copyWith(fontSize: 36);
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: defaultAppBar(context),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              spacing: Constants.n12,
              children: [
                SizedBox(), // Automatic get space 12 around
                Image.asset(Assets.logo),
                Container(
                  width: isSmallSmartPhone(context)
                      ? double.infinity
                      : Constants.loginContainerSize,
                  margin: EdgeInsetsConstants.pA16,
                  padding: EdgeInsetsConstants.pA16,
                  decoration: BoxDecoration(
                    color: AppColor.blue10,
                    borderRadius: BorderRadius.circular(Constants.n16),
                  ),
                  child: BlocProvider(
                    create: (context) => LoginBloc(
                      loginUsecase: sl<LoginUsecase>(),
                    ),
                    child: LoginFormContainer(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
