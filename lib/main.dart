import 'Screen/Widgets/constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'Controllers/global-controller.dart';
import 'Locale/language.dart';
import 'Screen/SplashScreen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with minimal configuration
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      appId: '1:151878495365:android:2510842ed9330bba260dec',
      apiKey: 'AIzaSyDCthiio0WgX1F2CiVlw1Z-kWOKYYi6vQI',
      projectId: 'we-courier-81101',
      messagingSenderId: '151878495365',
      // Removed authDomain as it's auth-specific
    ),
  );

  // Initialize local storage
  await GetStorage.init();
  final box = GetStorage();

  // Set up language
  dynamic langValue = box.read('lang') != null
      ? Locale(box.read('lang'), box.read('langKey'))
      : const Locale('en', 'US');

  runApp(MyApp(lang: langValue));
}

class MyApp extends StatelessWidget {
  final Locale lang;
  const MyApp({Key? key, required this.lang}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // System UI configuration
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: kMainColor)
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    // Initialize global controller
    Get.put(GlobalController()).onInit();

    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: Languages(),
        locale: lang,
        title: 'WeParcel Merchant', // Updated from 'Merchant'
          theme: ThemeData(
            fontFamily: 'Display',
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF7c2d12), // Use the new color
              primary: const Color(0xFF7c2d12), // Explicitly set primary color
              secondary: const Color(0xFFD84474), // Keep secondary color or adjust if needed
            ),
            primarySwatch: Colors.orange, // Optional: Closest Material swatch for compatibility
            useMaterial3: true, // Enable Material 3 for better color handling
          ),
        home: const SplashScreen(),
      ),
    );
  }
}