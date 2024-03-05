import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:masary/features/home_page/data/models/finance_model.dart';
import 'package:masary/features/home_page/view/home_view.dart';
import 'package:masary/features/onboarding/view/on_boarding.dart';
import 'package:masary/features/onboarding/view_model/onboarding/onboarding_cubit.dart';
import 'package:masary/features/splash/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(FinanceModelAdapter());
  Hive.registerAdapter(FinanceTypeAdapter());
  await Hive.openBox<FinanceModel>('financeBox');

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => OnboardingCubit(),
          lazy: true,
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Masary',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SplashView(),
    );
  }
}
