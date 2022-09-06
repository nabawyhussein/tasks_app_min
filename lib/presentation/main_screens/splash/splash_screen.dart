import 'dart:async';

import 'package:flutter/material.dart';
import 'package:taskmina/presentation/main_screens/tasks_home_screen/tasks_home_screen.dart';
import 'package:taskmina/presentation/resources/route_animatin.dart';

import '../../common_widget/build_logo_widget.dart';
import '../../resources/constant_manger.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Timer? _timer;
  late AnimationController _animationController;
  late Animation<double> _animation;

  _startDelay() async {
    _timer =
        Timer(const Duration(seconds: AppConstant.splashDelay), _goNextScreen);
  }

  _goNextScreen() {
    Navigator.of(context).push(createNavigateForStateless(TasksHomeScreen()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: AppConstant.splashAnimationDelay),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    _animationController.addListener(() {
      if (_animationController.isCompleted) {
        _startDelay();
      }
    });
    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer!.cancel();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _filterSplashImage(),
    );
  }

  _filterSplashImage() {
    return Container(
      alignment: Alignment.center,
      child: AnimatedBuilder(
        animation: _animation,
        child: const BuildLogoWidget(),
        builder: (_, child) {
          return Opacity(
            opacity: _animation.value,
            child: Transform.translate(
              offset: Offset(0, (1 - _animation.value) * -150),
              child: child,
            ),
          );
        },
      ),
    );
  }
}
