import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kruchenko_test_app/home_page.dart';
import 'package:kruchenko_test_app/utils/app_bloc_observer.dart';
import 'package:logger/web.dart';

Logger log = Logger(printer: PrettyPrinter());

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE3E3E3),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
