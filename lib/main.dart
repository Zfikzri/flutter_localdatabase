import 'package:flutter/material.dart';
import 'package:flutter_local_database/home/bindings.dart';
import 'package:flutter_local_database/home/home.dart';
import 'package:flutter_local_database/pages/create/bindings.dart';
import 'package:flutter_local_database/pages/create/create.dart';
import 'package:get/get.dart';
import 'db/db_helper.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.initDb();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      initialBinding: HomeBindings(),
      getPages: [
        GetPage(name: "/create", page: () => const NoteCreationPage(), binding: NoteCreationPageBindings()),
        GetPage(name: "/", page: () => const HomePage(), binding: HomeBindings())
      ],
    );
  }
}