import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heart_doctor/shared/bloc_observer.dart';

import 'config/app_router.dart';
import 'config/router_path.dart';
import 'firebase_options.dart';
import 'modules/login/cubit/cubit.dart';
import 'modules/sign_up/cubit/cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => SocialLoginCubit()),
            BlocProvider(create: (_) => SocialRegisterCubit()),
          ],
          child: MaterialApp(
            theme: ThemeData(
              useMaterial3: false,
              primarySwatch: Colors.orange,
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black),
              ),
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: RouterPath.onboarding,
            onGenerateRoute: AppRouter.generateRoute,
          ),
        );
      },
    );
  }
}
