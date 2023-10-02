part of 'form_submit_bloc.dart';

sealed class FormSubmitState extends Equatable {
  const FormSubmitState();
}

final class FormSubmitEnable extends FormSubmitState {
  final bool isValid;

  const FormSubmitEnable({
    required this.isValid,
  });

  @override
  List<Object> get props => [isValid];
}
