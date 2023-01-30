import 'package:bloc_to_communication/src/app.dart';
import 'package:bloc_to_communication/src/bloc/license_bloc.dart';
import 'package:bloc_to_communication/src/bloc/product_bloc.dart';
import 'package:bloc_to_communication/src/repository/license_repository.dart';
import 'package:bloc_to_communication/src/repository/product_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (context) => ProductRepository()),
          RepositoryProvider(create: (context) => LicenseRepository()),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) => ProductBloc(
                    context.read<ProductRepository>(),
                    context.read<LicenseRepository>())),
            BlocProvider(
                create: (context) =>
                    LicenseBloc(context.read<LicenseRepository>())),
          ],
          child: const App(),
        ),
      ),
    );
  }
}
