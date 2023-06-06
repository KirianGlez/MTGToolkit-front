import 'package:flutter/material.dart';
import 'package:mtg_app/cubit/app_cubit_logics.dart';
import 'package:mtg_app/pages/detail_page.dart';
import 'package:mtg_app/test/data_services.dart';

import 'cubit/app_cubits.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(
          data: DataServices(),
        ),
        child: AppCubitLogics(),
      ),
    );
  }
}
