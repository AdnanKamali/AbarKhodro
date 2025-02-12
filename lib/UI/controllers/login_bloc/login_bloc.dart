import 'package:abarkhodro_application/data/models/token_model/token_model.dart';
import 'package:abarkhodro_application/data/usecase/login_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUsecase loginUsecase;

  LoginBloc({
    required this.loginUsecase,
  }) : super(_Initial()) {
    on<LoginEvent>((event, emit) async {
      if (event is _Started) {
        // Initial State
        emit(LoginState.initial());
      } else if (event is _SendPhoneNumber) {
        // When reqeust to send phone number
        emit(LoginState.loading());
        final response =
            await loginUsecase.sendPhoneNumber(phoneNumber: event.phoneNumber);
        response.fold(
          (l) => emit(LoginState.error(errorMessage: l.errorMessage)),
          (r) => emit(LoginState.sendedOtp(phoneNumber: event.phoneNumber)),
        );
      } else if (event is _SendOtpCode) {
        // When request to send verify code
        final sendedOtpState = state as _SendedOtp;
        emit(LoginState.loading());
        final response = await loginUsecase.sendOtpCode(
          phoneNumber: sendedOtpState.phoneNumber,
          code: event.otpCode,
        );
        response.fold(
          (l) => emit(LoginState.error(errorMessage: l.errorMessage)),
          (r) => emit(LoginState.logedIn(loginTokenModel: r.result)),
        );
      }
    });
  }
}
