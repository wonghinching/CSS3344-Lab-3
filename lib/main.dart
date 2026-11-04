import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/cruise_booking_viewmodel.dart';
import 'views/cruise_booking_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CruiseBookingViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CruiseBookingViewModel>(
      builder: (context, vm, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Rajang Cruise App',
          theme: ThemeData.light(useMaterial3: true),
          darkTheme: ThemeData.dark(useMaterial3: true),
          themeMode: vm.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          home: const CruiseBookingScreen(),
        );
      },
    );
  }
}