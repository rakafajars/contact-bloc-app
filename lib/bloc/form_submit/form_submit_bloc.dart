import 'package:contact_bloc/bloc/form_number/form_number_cubit.dart';
import 'package:contact_bloc/bloc/form_username/form_username_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'form_submit_event.dart';
part 'form_submit_state.dart';

class FormSubmitBloc extends Bloc<FormSubmitEvent, FormSubmitState> {
  final FormUsernameBloc formUsernameBloc;
  final FormNumberCubit formNumberCubit;

  FormSubmitBloc({
    required this.formUsernameBloc,
    required this.formNumberCubit,
  }) : super(
          const FormSubmitEnable(
            isValid: false,
          ),
        ) {
    on<ValidateFormSubmitEvent>(
      (event, emit) {
        final usernameState = formUsernameBloc.state;

        bool isValid = usernameState.nameValue?.isNotEmpty == true &&
            formNumberCubit.phoneValue?.isNotEmpty == true;

        emit(
          FormSubmitEnable(isValid: isValid),
        );
      },
    );
  }
}
