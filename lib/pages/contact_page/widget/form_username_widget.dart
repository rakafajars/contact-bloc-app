import 'package:contact_bloc/bloc/form_submit/form_submit_bloc.dart';
import 'package:contact_bloc/widget/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/form_username/form_username_bloc.dart';

class FormUsernameWidget extends StatelessWidget {
  const FormUsernameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormUsernameBloc, FormUsernameState>(
      builder: (context, state) {
        return TextFieldWidget(
          label: 'Name',
          hintText: 'Insert Your Name',
          // controller: _nameController,
          errorText: context.read<FormUsernameBloc>().state.message,
          onChanged: (value) {
            context.read<FormUsernameBloc>().add(
                  FormInputUsernameEvent(
                    value: value,
                  ),
                );
            context.read<FormSubmitBloc>().add(
                  ValidateFormSubmitEvent(),
                );
          },
        );
      },
    );
  }
}
