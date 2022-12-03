import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta_spark/Responsive/mobile_layout.dart';
import 'package:insta_spark/Responsive/responsive_layout.dart';
import 'package:insta_spark/Responsive/web_layout.dart';
import 'Utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    // web k liay
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAMNU9eHa_esqA90AJ2gsVzJv-eCwezdsA",
          appId: "1:47973314992:web:9f58246dd5fa38c279e675",
          messagingSenderId: "47973314992",
          projectId: "insta-spark",
          storageBucket: "insta-spark.appspot.com"),
    );
  } else {
    // mobile k liay
    await Firebase.initializeApp();
  }

  runApp(const InstaSpark());
}

class InstaSpark extends StatelessWidget {
  const InstaSpark({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          // theme data ka jo dark hai usko copy kr k le aoo aur baki main btata hun
          scaffoldBackgroundColor: ColorsConstants.kMobileBackgroundColor),
      home: const Scaffold(
        body: ResponsiveLayout(
            mobileScreenLayout: MobileLayout(), webScreenLayout: WebLayout()),
      ),
    );
  }
}



// flutter run -d chrome -> to run for chrome