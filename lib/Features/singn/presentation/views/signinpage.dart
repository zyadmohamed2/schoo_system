import 'package:flutter/material.dart';
import 'package:schoolapp/Features/HomePage/view/homepage.dart';
import 'package:schoolapp/core/utils/assets.dart';
import 'package:schoolapp/core/utils/styles.dart';

import 'wedgits/custom_TextFormField.dart';
import 'wedgits/signin_button.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  var usernameController = TextEditingController();
  var formkey = GlobalKey<FormState>();

  var passwordController = TextEditingController();
  bool keeplogedin=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:85.0,vertical: 56),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(AssetsData.signinimage),
                      ],
                    ),
                  ),
                ),
                Column(
             crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("User name",style: Styles.maintextstyle,),
                   const SizedBox(height: 16,),
                    CustomTextFormField(hint: "Enter your school username.",controller: usernameController,icon: IconButton(icon: const Icon(null,),onPressed: () { }, ) ),
                   const SizedBox(height: 16,),
                 const Text("Password",style: Styles.maintextstyle,),
                   const SizedBox(height: 16,),
                    CustomTextFormField(hint: "Enter your password",controller: passwordController,icon: IconButton(icon: const Icon(Icons.visibility_off_outlined,),onPressed: () { }, ) ),
                  Row(children: [
                    Checkbox(value: keeplogedin, 
                    onChanged: (vlaue){
                   setState(() {
                     vlaue=keeplogedin;
                   });
                    }
                    ),
                    const Text("Remember Me",style: Styles.maintextstyle,)
                  ],),
            const SizedBox(height: 48,),
            SiginButton   (hint: "Log In",onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context) => const HomePage()));

            },)              
                  ],
                )
              
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
