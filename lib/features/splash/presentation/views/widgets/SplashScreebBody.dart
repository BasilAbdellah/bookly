import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    
    navigateToHome();
  }




@override
  void dispose() {

    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 8,
        ),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context,_) {
            return SlideTransition(
                position:slidingAnimation ,
                child:
            const Center(child: Text('Read Free Books')));
          }
        )
      ],
    );
  }
  void navigateToHome() {
    Future.delayed(Duration(seconds: 2),(){
      Get.to(()=>HomeScreen(),transition:Transition.fade
          ,duration: Duration( milliseconds: 250) );
    });
  }
  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this,
            duration: const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: const Offset(0, 5),end: const Offset(0,0))
        .animate(animationController);
    animationController.forward();
  }
}
