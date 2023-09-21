import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:schoolapp/Features/profile/presentation/widget/appBar.dart';
import 'package:schoolapp/Features/profile/presentation/widget/custom_bottom_dialog.dart';
import 'package:schoolapp/Features/profile/presentation/widget/personalData/edit.dart';
import 'package:schoolapp/core/utils/app_router.dart';
import 'package:schoolapp/core/utils/assets.dart';

class PersonalData extends StatelessWidget {
  PersonalData({super.key});
  final TextEditingController address = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    address.text =
        "Nasr City, Al-Thawra Street ,Zamalek District, Al-Modir Street, Building 32";
    password.text = "pasword";
    phone.text = "";
    return Scaffold(
      appBar: CustomAppBar(
        "Personal Data",
        () {
          GoRouter.of(context).pop();
        },
      ),
      body: Container(
          padding: const EdgeInsets.all(23),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              Edit(
                icon: AssetsData.homeIcon,
                title: "Address",
                controller: address,
              ),
              const SizedBox(
                height: 40,
              ),
              IntlPhoneField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                initialCountryCode: "EG",
                onChanged: (value) {},
                controller: phone,
              ),
              const SizedBox(
                height: 40,
              ),
              Edit(
                icon: AssetsData.lockicon,
                title: "Password",
                controller: password,
                obscureText: true,
              ),
              const SizedBox(
                height: 40,
              ),
              const CustomBottomDialog(
                text: "Save changes",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomBottomDialog(
                text: "Cansel",
                cancel: true,
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kprofilepage);
                },
              )
            ],
          )),
    );
  }
}
