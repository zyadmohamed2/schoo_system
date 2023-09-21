import 'package:schoolapp/core/utils/assets.dart';

class OnBoardingModel {
  String image;
  String title;
  String desc;

   OnBoardingModel({required this.image,required this.title, required this.desc});
}


List<OnBoardingModel> content = [
  OnBoardingModel(
      image: AssetsData.fisrtonboardingimage,
      title: "Chat and book an appointment with your  child's teacher ",
      desc:  'Get real-time feedback on your childs progress and get  help with any challenges they may be facing.'),
  OnBoardingModel(
      image: AssetsData.secondonboardingimage,
      title: 'Be there for them and check in on their  educational progress',
      desc: "Review your child's grades regularly and know all there  exams grades "),
  OnBoardingModel(
      image:AssetsData.thirdonboardingimage,
      title: 'Stay up-to-date to school last news and             events',
      desc:  'Never miss a school announcement or event again'),

];