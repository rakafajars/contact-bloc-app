import 'package:contact_bloc/bloc/form_number/form_number_cubit.dart';
import 'package:contact_bloc/bloc/form_submit/form_submit_bloc.dart';
import 'package:contact_bloc/bloc/form_username/form_username_bloc.dart';
import 'package:contact_bloc/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonSubmitWidget extends StatelessWidget {
  const ButtonSubmitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BlocBuilder<FormSubmitBloc, FormSubmitState>(
            builder: (context, state) {
              if (state is FormSubmitEnable) {
                return ButtonWidget(
                  title: 'Submit',
                  onPressed: state.isValid ? () {} : null,
                );
              }
              return const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}

// class ButtonSubmitWidget extends StatelessWidget {
//   const ButtonSubmitWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 16),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           BlocBuilder<FormUsernameBloc, FormUsernameMessageState>(
//             builder: (context, usernameState) {
//               return BlocBuilder<FormNumberCubit, FormNumberState>(
//                 builder: (context, numberState) {
//                   return ButtonWidget(
//                     title: 'Submit',
//                     onPressed: usernameState.nameValue?.isNotEmpty == true &&
//                             context
//                                     .read<FormNumberCubit>()
//                                     .phoneValue
//                                     ?.isNotEmpty ==
//                                 true
//                         ? () {}
//                         : null,
//                   );
//                 },
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
