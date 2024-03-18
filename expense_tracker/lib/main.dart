import 'package:expense_tracker/app.dart';
import 'package:expense_tracker/data/repositories/authentication/authentication_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  // Widgets Binding
  final widgetBinding = WidgetsFlutterBinding.ensureInitialized();

  /// GetStorage
  // await GetStorage.init();

  // Await Splash untill other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetBinding);

  ///
  Get.put(AuthenticationRepository());
  runApp(const MyApp());
}
