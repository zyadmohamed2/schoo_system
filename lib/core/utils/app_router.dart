import 'package:go_router/go_router.dart';
import 'package:schoolapp/Features/HomePage/view/homepage.dart';
import 'package:schoolapp/Features/chat/presentation/views/ChatPage/chatpage.dart';
import 'package:schoolapp/Features/chat/presentation/views/Chatroom/Chatroom.dart';
import 'package:schoolapp/Features/chat/presentation/views/RequestPage/RequestPage.dart';
import 'package:schoolapp/Features/profile/presentation/views/about.dart';
import 'package:schoolapp/Features/profile/presentation/views/child_profile.dart';
import 'package:schoolapp/Features/profile/presentation/views/personal_data.dart';
import 'package:schoolapp/Features/profile/presentation/views/setting.dart';

import '../../Features/Home/presentation/views/home_view.dart';

import '../../Features/blog/presentation/views/blog.dart';

import '../../Features/onboarding/presentation/views/onboarding_veiw.dart';
import '../../Features/profile/presentation/views/profilepage.dart';
import '../../Features/singn/presentation/views/signinpage.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const konboardingpage = '/onboarding';
  static const ksignin = '/signinpage';
  static const kblogpage = '/blocpage';
  static const kchatpage = '/chatpage';
  static const kprofilepage = '/profilepage';
  static const kpersonaldata = '/personaldata';
  static const ksetting = "/setting";
  static const kRequstpage = '/kRequstpage';
  static const kChatroom = '/kChatroom';
  static const kAboutUs = '/aboutUs';
  static const kChildProfile = '/childprofile';


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: ksignin,
        builder: (context, state) => const SigninPage(),
      ),
      GoRoute(
        path: konboardingpage,
        builder: (context, state) => const OnBoarding(),
      ),
      GoRoute(
        path: kblogpage,
        builder: (context, state) => const BlogPage(),
      ),
      GoRoute(
        path: kchatpage,
        builder: (context, state) => const ChatPage(),
      ),
      GoRoute(
        path: kRequstpage,
        builder: (context, state) => const RequestPage(),
      ),
      GoRoute(
        path: kChatroom,
        builder: (context, state) => const Chatroom(),
      ),
      GoRoute(
        path: kprofilepage,
        builder: (context, state) => const ProfilePage(),
      ),
      GoRoute(
        path: kpersonaldata,
        builder: (context, state) => PersonalData(),
      ),
      GoRoute(
        path: ksetting,
        builder: (context, state) => const Setting(),
      ),
      GoRoute(
        path: kAboutUs,
        builder: (context, state) => const AboutUs(),
      ),
      GoRoute(
        path: kChildProfile,
        builder: (context, state) => const ChildProfile(),
      ),
    ],
  );
}
