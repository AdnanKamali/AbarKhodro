part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated({required String refreshToken}) =
      _Authenticated;
  const factory AuthState.logout() = _Logout;
}
