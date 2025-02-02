// ignore_for_file: use_build_context_synchronously


import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'shared_preference_manager.dart';


class AppManager {

  
  static Future<void> initialize() async {

    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await SharedPreferencesManager.init();
  
  }
}
