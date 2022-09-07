import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskmina/presentation/main_screens/splash/splash_screen.dart';

import '../bloc/user_tasks_cubit/tasks_operations_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<TasksOperationsCubit>(
              create: (context) => TasksOperationsCubit()),
        ],
        child: const MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
          title: "Min Task Nabawy",
        ));
  }
}
