import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stress_reducer_dashboard/screen/stress_reducer_dashboard/controller/stressreducer_dashboard_controller.dart';
import 'package:stress_reducer_dashboard/screen/stress_reducer_dashboard/screen/stressreducer_dashboard.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => StressreducerDashboardController(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: StressReducerDashboard());
  }
}
