import 'package:contact_bloc/bloc/form_number/form_number_cubit.dart';
import 'package:contact_bloc/bloc/form_submit/form_submit_bloc.dart';
import 'package:contact_bloc/bloc/form_username/form_username_bloc.dart';
import 'package:contact_bloc/pages/contact_page/contact_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoutedNamed {
  static const contact = '/';
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FormUsernameBloc>(
          create: (context) => FormUsernameBloc(),
        ),
        BlocProvider<FormNumberCubit>(
          create: (context) => FormNumberCubit(),
        ),
        BlocProvider<FormSubmitBloc>(
          create: (context) => FormSubmitBloc(
            formUsernameBloc: context.read<FormUsernameBloc>(),
            formNumberCubit: context.read<FormNumberCubit>(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const SplashScreenPage(),
        initialRoute: RoutedNamed.contact,
        routes: {
          RoutedNamed.contact: (_) => const ContactPage(),
        },
      ),
    );
  }
}
