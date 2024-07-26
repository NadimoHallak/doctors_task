import 'package:bloc/bloc.dart';
import 'package:doctors_task/core/di.dart';
import 'package:doctors_task/model/auth/login_mode.dart';
import 'package:doctors_task/services/auth_services.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginByEmail>((event, emit) async {
      emit(Loading());

      try {
        String code = await AuthServices().loginByEmail(event.loginModel);
        config.get<SharedPreferences>().setString("code", code);
        emit(SuccessLogin());
        // print(code);
      } catch (e) {
        emit(FieldLogin());
        print(e);
      }
    });

    on<ValidateOtpCode>((event, emit) {
      emit(Loading());
      String code = config.get<SharedPreferences>().getString("code")!;
      print("event  ");
      try {
        if (event.code == code) {
          emit(SuccessVlidateUser());
        } else {
          emit(CodeMismatch());
        }
      } catch (e) {
        emit(FieldMismatch());
      }
    });
  }
}
