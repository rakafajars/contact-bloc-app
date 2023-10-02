import 'package:contact_bloc/bloc/form_number/form_number_cubit.dart';
import 'package:contact_bloc/bloc/form_submit/form_submit_bloc.dart';
import 'package:contact_bloc/widget/text_field_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormNumberWidget extends StatelessWidget {
  const FormNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormNumberCubit, FormNumberState>(
      builder: (context, state) {
        return TextFieldWidget(
          label: 'Nomor',
          hintText: '+62....',
          textInputType: TextInputType.phone,
          errorText: context.read<FormNumberCubit>().messageErrorPhone,
          onChanged: (val) {
            context.read<FormNumberCubit>().validationPhone(val);
            context.read<FormSubmitBloc>().add(
                  ValidateFormSubmitEvent(),
                );
          },
        );
      },
    );
  }
}
