import 'package:abarkhodro_application/UI/controllers/aut_cubit/auth_cubit.dart';
import 'package:abarkhodro_application/UI/controllers/login_bloc/login_bloc.dart';
import 'package:abarkhodro_application/UI/screens/login/widgets/login_form_field_widget.dart';
import 'package:abarkhodro_application/localization/app_localization.dart';
import 'package:abarkhodro_application/routing/routes.dart';
import 'package:abarkhodro_application/utils/constants.dart';
import 'package:abarkhodro_application/utils/theme/color.dart';
import 'package:abarkhodro_application/utils/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class LoginFormContainer extends StatelessWidget {
  LoginFormContainer({super.key});

  final formKey = GlobalKey<FormState>();

  bool isEnabledPhoneNumberTextField = true;
  String confirmButtonText = AppLocalization.giveOtpCode;
  String? serverErrorMessage;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    var headLineLarge = Theme.of(context).textTheme.headlineLarge;
    final loginBloc = context.read<LoginBloc>();

    return Form(
      key: formKey,
      child: Column(
        spacing: Constants.n24,
        children: [
          SizedBox(), // give more padding from spacing
          Text(
            AppLocalization.loginOrRegister,
            style: headLineLarge,
          ),
          SizedBox(), // give more padding from spacing

          BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              state.maybeWhen(
                orElse: () => isLoading = false,
                loading: () => isLoading = true,
              );

              state.maybeWhen(
                orElse: () => serverErrorMessage = null,
                error: (errorMessage) => serverErrorMessage = errorMessage,
              );

              state.maybeWhen(
                initial: () {
                  isEnabledPhoneNumberTextField = true;
                  confirmButtonText = AppLocalization.giveOtpCode;
                },
                sendedOtp: (phoneNumber) {
                  isEnabledPhoneNumberTextField = false;
                  confirmButtonText = AppLocalization.confirm;
                },
                logedIn: (loginTokenModel) {
                  final authBloc = context.read<AuthCubit>();
                  authBloc.registerAccessToken(loginTokenModel.access);
                  authBloc.setAuthenticated(loginTokenModel.refresh);
                  SchedulerBinding.instance.addPostFrameCallback((_) {
                    // When build complete Go to home page
                    context.go(Routes.home.path);
                  });
                },
                orElse: () => null,
              );

              // Args for bulid phone number Form Field
              final phoneNumberFormFieldWidgetArgs = LoginFormFieldWidgetArgs(
                labelText: AppLocalization.inputYourPhoneNumber,
                onSaved: (phoneNumber) => loginBloc.add(
                  LoginEvent.sendPhoneNumber(phoneNumber: phoneNumber!),
                ),
                validator: phoneNumberValidator,
                enabled: isEnabledPhoneNumberTextField,
              );

              // Args for bulid otp code Form Field
              final otpCodeFormFieldWidgetArgs = LoginFormFieldWidgetArgs(
                labelText: AppLocalization.inputOtpCode,
                onSaved: (otpCode) => loginBloc.add(
                  LoginEvent.sendOtpCode(otpCode: otpCode!),
                ),
                validator: otpCodeValidator,
              );

              return Column(
                spacing: Constants.n24,
                children: [
                  LoginFormFieldWidget(
                    formFieldWidgetArgs: phoneNumberFormFieldWidgetArgs,
                  ),

                  // When disable phone number should open otp code field
                  if (!isEnabledPhoneNumberTextField)
                    LoginFormFieldWidget(
                      formFieldWidgetArgs: otpCodeFormFieldWidgetArgs,
                    ),

                  // Error Message
                  if (serverErrorMessage != null)
                    Row(
                      children: [
                        Text(
                          serverErrorMessage!,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: AppColor.red1),
                        ),
                      ],
                    ),

                  // Buttons
                  Row(
                    spacing: 6,
                    children: [
                      _onSubmitFormElevatedButton(
                        context,
                        text: confirmButtonText,
                      ),
                      if (!isEnabledPhoneNumberTextField)
                        _editPhoneNumberOutlinedButton(
                          context,
                          loginBloc: loginBloc,
                        ),
                    ],
                  ),
                ],
              );
            },
          ),
          SizedBox(),
        ],
      ),
    );
  }

  _editPhoneNumberOutlinedButton(BuildContext context,
      {required LoginBloc loginBloc}) {
    return Expanded(
      child: OutlinedButton(
        onPressed: isLoading
            ? null
            : () {
                loginBloc.add(LoginEvent.started());
              },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            AppLocalization.editPhoneNumber,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: AppColor.primary),
          ),
        ),
      ),
    );
  }

  _onSubmitFormElevatedButton(BuildContext context, {required String text}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () async {
          if (isLoading) return;
          if (formKey.currentState!.validate()) {
            formKey.currentState?.save();
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: isLoading
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                    color: AppColor.white,
                  ),
                )
              : Text(
                  confirmButtonText,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColor.white),
                ),
        ),
      ),
    );
  }
}
