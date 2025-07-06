import 'package:dart_template/data/models/hive_plan.dart';
import 'package:dart_template/presentation/views/calendar/calendar_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(HivePlanModelAdapter());
  Hive.registerAdapter(TimeRangeAdapter());

  await Hive.openBox<HivePlanModel>('plansBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planzo',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      home: CalendarScreen(),
    );
  }
}

