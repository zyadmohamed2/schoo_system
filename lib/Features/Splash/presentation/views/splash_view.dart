
import 'package:flutter/material.dart';
import 'package:schoolapp/Features/onboarding/presentation/views/onboarding_veiw.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/core/utils/assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    
    goToNextView();
  } 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Image.asset(AssetsData.logo)),
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
    // Get.to(OnbordingView());
   Navigator.push(context, MaterialPageRoute( builder: (context) => const OnBoarding()));       
          }

    
    
    );
}
}
