import 'package:flutter/material.dart';
import 'package:schoolapp/Features/onboarding/presentation/views/wedgits/build_dot.dart';
import 'package:schoolapp/Features/singn/presentation/views/signinpage.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/core/utils/styles.dart';
import 'onboarding_model.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);
   
  @override
  State<OnBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
 late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);

  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
      

    return Scaffold(
     
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (index){
                setState(() {
                  currentIndex = index;
                });
              },
                itemCount: content.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top:100.0,),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 250,
                          child: ClipOval(
                              child: Image.asset(
                            content[index].image,
                           
                          )),
                        ),
                       const SizedBox(
                          height: 80,
                        ),
                        // 
                       Padding(
                         padding: const EdgeInsets.only(left:16,right: 16),
                         child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                                             
                           children: [
                            Text(
                            content[index].title,
                            style: Styles.maintextstyle
                          ),
                         const  SizedBox(
                            height: 12,
                          ),
                          Text(
                           
                            content[index].desc,
                            style: Styles.detailedtextstyle
                          ),
                          
                         ],),
                       )
                      ],
                    ),
                  );
                }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                List.generate(
                    content.length, (index) => BuildDot(currentIndex: currentIndex, index: index, context: context))
              ,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 55,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: kPrimaryColor
              ),
               margin: const EdgeInsets.only(left: 16,right: 16,bottom: 48),
             width: double.infinity,
            child: MaterialButton(
              child: Text(currentIndex == content.length -1 ? 'Sign in your account' :'Next',
                style:Styles.buttontextstyle
              ),
              onPressed: (){
                if(currentIndex == content.length-1){
           
              Navigator.push(context, MaterialPageRoute(builder:(context) => const SigninPage()));
                }
                
                _controller.nextPage(
                    duration: const Duration(milliseconds: 10),
                    curve: Curves.bounceIn);
              },
              // color: Theme.of(context).primaryColor

            ),
          )
        ],
      ),
    );
  }
}


