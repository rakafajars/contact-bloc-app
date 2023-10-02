part of 'form_submit_bloc.dart';

sealed class FormSubmitEvent extends Equatable {
  const FormSubmitEvent();

  @override
  List<Object> get props => [];
}

class ValidateFormSubmitEvent extends FormSubmitEvent {}
