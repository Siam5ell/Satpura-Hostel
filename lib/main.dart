// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hostelapplication/logic/modules/mess_model.dart';
import 'package:hostelapplication/logic/provider/complaint_provider.dart';
import 'package:hostelapplication/logic/provider/leave_provider.dart';
import 'package:hostelapplication/logic/provider/mess_provider.dart';
import 'package:hostelapplication/logic/provider/notice_provider.dart';
import 'package:hostelapplication/logic/provider/service_provider.dart';
import 'package:hostelapplication/logic/provider/userData_provider.dart';
import 'package:hostelapplication/logic/service/auth_services/auth_service.dart';
import 'package:hostelapplication/logic/service/fireStoreServices/complaint_firestore_service.dart';
import 'package:hostelapplication/logic/service/fireStoreServices/leave_firestore_service.dart';
import 'package:hostelapplication/logic/service/fireStoreServices/mess_firestore_service.dart';
import 'package:hostelapplication/logic/service/fireStoreServices/notice_firestore_service.dart';
import 'package:hostelapplication/logic/service/fireStoreServices/service_firestore_service.dart';
import 'package:hostelapplication/logic/service/fireStoreServices/user_firestore_services.dart';
import 'package:hostelapplication/presentation/router/route.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  int? initScreen;

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
  await Firebase.initializeApp();
  // Plugin must be initialized before using
  await FlutterDownloader.initialize(
      debug:
          true, // optional: set to false to disable printing logs to console (default: true)
      ignoreSsl:
          true // option: set to false to disable working with http links (default: false)
      );

  runApp(
    MultiProvider(
      providers: [
        StreamProvider.value(
          value: ServiceFirestoreService().getService(),
          initialData: null,
        ),
        StreamProvider.value(
          value: LeaveFirestoreService().getLeave(),
          initialData: null,
        ),
        StreamProvider.value(
          value: NoticeFirestoreService().getNotice(),
          initialData: null,
        ),
        StreamProvider<List<Mess>?>.value(
          value: MessFirestoreService().mess,
          initialData: null,
          catchError: (context, error) {
            print(error.toString());
          },
        ),
        StreamProvider.value(
          value: ComplaintFirestoreService().getComplaintForAdmin(),
          initialData: null,
        ),
        StreamProvider.value(
          value: UserDataFirestoreService().getUserData(),
          initialData: null,
        ),
        ChangeNotifierProvider.value(
          value: NoticeProvider(),
        ),
        ChangeNotifierProvider.value(
          value: ComplaintProvider(),
        ),
        ChangeNotifierProvider.value(
          value: MessProvider(),
        ),
        ChangeNotifierProvider.value(
          value: UsereDataProvider(),
        ),
        ChangeNotifierProvider.value(
          value: LeaveProvider(),
        ),
        ChangeNotifierProvider.value(
          value: ServiceProvider(),
        ),
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
        Provider<UserDataFirestoreService>(
          create: (_) => UserDataFirestoreService(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
          appBarTheme: AppBarTheme(
              elevation: 0,
              shape: Border(bottom: BorderSide(color: Colors.black, width: 1)),
              backgroundColor: Colors.white,
              foregroundColor: Colors.black //here you can give the text color

              )),
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
