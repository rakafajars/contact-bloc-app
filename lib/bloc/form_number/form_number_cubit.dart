import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'form_number_state.dart';

class FormNumberCubit extends Cubit<FormNumberState> {
  FormNumberCubit()
      : super(
          const FormNumberMessageState(
            message: null,
            numberValue: null,
          ),
        );

  String? phoneValue;
  String? messageErrorPhone;

  void validationPhone(String value) {
    phoneValue = value;
    if (phoneValue?.isEmpty == true) {
      messageErrorPhone = "Nomor Telepon Tidak Boleh Kosng!";
    } else {
      messageErrorPhone = null;
    }

    emit(
      FormNumberMessageState(
        message: messageErrorPhone,
        numberValue: phoneValue,
      ),
    );
  }
}
