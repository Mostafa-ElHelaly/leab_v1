import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:globaladvice_new/features/auth/data/model/reset_password_model.dart';
import 'package:globaladvice_new/features/auth/domain/use_case/reset_password_us.dart';
import 'package:globaladvice_new/features/auth/presentation/manager/reset_password_bloc/bloc/reset_password_event.dart';
import 'package:globaladvice_new/features/auth/presentation/manager/reset_password_bloc/bloc/reset_password_state.dart';

import '../../../../../../core/utils/api_helper.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordUseCase passwordUseCase;

  ResetPasswordBloc({required this.passwordUseCase})
      : super(ResetPasswordInitial()) {
    on<ResetPasswordEvent>((event, emit) async {
      emit(const Loadingchangingpasswordstate());
      final result =
          await passwordUseCase.call(ResetPasswordModel(email: event.email));
      result.fold(
          (l) => emit(Resetpasswordsuccess(model: l)),
          (r) => emit(Changingfailedstate(
                errorMessage: DioHelper().getTypeOfFailure(r),
              )));
    });
  }
}
