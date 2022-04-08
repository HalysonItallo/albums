import 'package:albums/app/data/datasource/local/db/database.dart';
import 'package:albums/app/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() async {
  setupInjection();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ModularApp(
      module: AppModule(),
      child: AppWidget(
        db: await $FloorAppDatabase.databaseBuilder('app_database.db').build(),
      ),
    ),
  );
}
