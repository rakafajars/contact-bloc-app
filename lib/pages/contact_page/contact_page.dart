import 'package:contact_bloc/pages/contact_page/widget/button_sumbit_widget.dart';
import 'package:contact_bloc/pages/contact_page/widget/form_number_widget.dart';
import 'package:contact_bloc/pages/contact_page/widget/form_username_widget.dart';
import 'package:contact_bloc/pages/contact_page/widget/header_contact_page.dart';
import 'package:contact_bloc/theme/theme_color.dart';
import 'package:contact_bloc/theme/theme_text_style.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor().whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Contact',
          style: ThemeTextStyle().m3DisplayLarge,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const HeaderContactPage(),
          const FormUsernameWidget(),
          const FormNumberWidget(),
          const ButtonSubmitWidget(),
          const SizedBox(height: 49),
          Text(
            'List Contact',
            style: ThemeTextStyle().m3HeadlineSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 14),
          // Container(
          //   width: double.infinity,
          //   margin: const EdgeInsets.symmetric(horizontal: 16),
          //   decoration: BoxDecoration(
          //     color: ThemeColor().m3SysLightPurple50,
          //     borderRadius: BorderRadius.circular(28),
          //   ),
          //   child: ListView.builder(
          //     shrinkWrap: true,
          //     itemCount: buttonSubmitProvider.contactModel.length,
          //     itemBuilder: (context, index) {
          //       var contact = buttonSubmitProvider.contactModel[index];
          //       return ListTile(
          //         leading: const CircleAvatar(
          //           child: Text(
          //             'A',
          //           ),
          //         ),
          //         title: Text(contact.name),
          //         subtitle: Text(contact.phone),
          //         trailing: Row(
          //           mainAxisSize: MainAxisSize.min,
          //           children: [
          //             contact.isEdited == true
          //                 ? const SizedBox()
          //                 : IconButton(
          //                     onPressed: () {
          //                       Navigator.pushNamed(
          //                         context,
          //                         RoutedNamed.contactDetail,
          //                         arguments: DetailContactArguments(
          //                           contactModel: ContactModel(
          //                             name: contact.name,
          //                             phone: contact.phone,
          //                             index: index,
          //                           ),
          //                         ),
          //                       );
          //                     },
          //                     icon: const Icon(
          //                       Icons.edit,
          //                     ),
          //                   ),
          //             IconButton(
          //               onPressed: () {
          //                 buttonSubmitProvider.removeContact(index);
          //               },
          //               icon: const Icon(
          //                 Icons.delete,
          //               ),
          //             ),
          //           ],
          //         ),
          //       );
          //     },
          //   ),
          // )
        ],
      ),
    );
  }
}
