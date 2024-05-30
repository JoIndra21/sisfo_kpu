// ignore_for_file: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sisfo_kpu/data/Data_KPU.dart';
import 'package:sisfo_kpu/data/Data_KPU_User.dart';
import 'package:sisfo_kpu/database/firestore.dart';
import 'package:sisfo_kpu/datapemilih.dart';
import 'package:sisfo_kpu/formentry.dart';
import 'package:sisfo_kpu/homepage.dart';
import 'package:sisfo_kpu/information.dart';
import 'package:geolocator/geolocator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DataPenggunaKPU>(
          create: (context) => DataPenggunaKPU(),
        ),
        Provider<FireStoreDatabase>(
          create: (context) => FireStoreDatabase(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
