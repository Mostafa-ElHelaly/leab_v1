import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/routes.dart';
import 'package:leap/core/service/service_locator.dart';
import 'package:leap/features/auth/presentation/controller/login_bloc/login_with_email_and_password_bloc.dart';
import 'package:leap/features/home/home_screen/controller/cubit.dart';
import 'package:leap/view/constants/extensions.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() async {
  await ServerLocator().init();
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 800, tablet: 700, watch: 200),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<LoginWithEmailAndPasswordBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<HomeScreenCubit>(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: context.screenWidth >= 700
            ? const Size(1440, 768)
            : const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteGenerator.getRoute,
            initialRoute: Routes.home,
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
                scaffoldBackgroundColor:
                    const Color.fromRGBO(250, 250, 250, 1)),
          );
        },
      ),
    );
  }
}
