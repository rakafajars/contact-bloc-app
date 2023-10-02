import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'form_username_event.dart';
part 'form_username_state.dart';

class FormUsernameBloc
    extends Bloc<FormUsernameEvent, FormUsernameMessageState> {
  FormUsernameBloc()
      : super(
          const FormUsernameMessageState(
            message: null,
            nameValue: null,
          ),
        ) {
    on<FormInputUsernameEvent>(
      (event, emit) {
        String? message;
        String nameValue = event.value ?? "";
        if (event.value?.isEmpty == true) {
          message = "Name Tidak Boleh Kosong";
        } else if ((event.value?.length ?? 0) <= 2) {
          message = "Name Harus Lebih dari 2 kata";
        } else {
          message = null;
        }

        emit(
          FormUsernameMessageState(message: message, nameValue: nameValue),
        );
      },
    );
  }
}
