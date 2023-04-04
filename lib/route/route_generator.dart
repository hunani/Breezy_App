import 'package:get/get.dart';
import 'package:popol_app/ui/screen/contacts_tab/send_screen.dart';
import 'package:popol_app/ui/screen/dashboad/dashboad_screen.dart';
import 'package:popol_app/ui/screen/forgot/forgot_screen.dart';
import 'package:popol_app/ui/screen/profile_tab/profile_screen.dart';
import 'package:popol_app/ui/screen/settings_tab/settings_screen.dart';
import 'package:popol_app/ui/screen/share_tab/share_screen.dart';
import 'package:popol_app/ui/screen/signup/signup_otpverification_screen.dart';
import 'package:popol_app/ui/screen/splash/splash_screen.dart';
import '../ui/screen/contacts_tab/add_button_screen.dart';
import '../ui/screen/contacts_tab/compose_screen.dart';
import '../ui/screen/contacts_tab/contacts_details.dart';
import '../ui/screen/contacts_tab/contacts_screen.dart';
import '../ui/screen/contacts_tab/edit_image_screen.dart';
import '../ui/screen/profile_tab/recommenaed_details_screen.dart';
import '../ui/screen/contacts_tab/text_your_card_screen.dart';
import '../ui/screen/dashboad/dashboad.dart';
import '../ui/screen/forgot/forgot_done.dart';
import '../ui/screen/forgot/reset_password_screen.dart';
import '../ui/screen/login/login_Screen.dart';
import '../ui/screen/forgot/forgot_otp_verification.dart';
import '../ui/screen/profile_tab/details_screen.dart';
import '../ui/screen/profile_tab/edit/contact_details_screen.dart';
import '../ui/screen/profile_tab/edit/edit_cart_screen.dart';
import '../ui/screen/profile_tab/edit/preview_cart_screen.dart';
import '../ui/screen/profile_tab/premium_screen.dart';
import '../ui/screen/settings_tab/activate_a_my_beezy_screen.dart';
import '../ui/screen/settings_tab/edit_account_email.dart';
import '../ui/screen/settings_tab/edit_profile_link.dart';
import '../ui/screen/settings_tab/how_to_popscan.dart';
import '../ui/screen/settings_tab/my_beezy_ambassador.dart';
import '../ui/screen/settings_tab/my_beezy_join_account.dart';
import '../ui/screen/signup/sign_up2_screen.dart';
import '../ui/screen/signup/sign_up_screen.dart';
import '../ui/screen/signup/verification_done.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(name: SplashScreen.routeName, page: () => const SplashScreen()),
  GetPage(name: SignUpScreen.routeName, page: () => const SignUpScreen()),
  GetPage(name: SignUp2Screen.routeName, page: () => const SignUp2Screen()),
  GetPage(
      name: SignUpOtpVerificationScreen.routeName,
      page: () => const SignUpOtpVerificationScreen()),
  GetPage(
      name: VerificationDone.routeName, page: () => const VerificationDone()),
  GetPage(name: LoginScreen.routeName, page: () => const LoginScreen()),
  GetPage(name: ForgotScreen.routeName, page: () => const ForgotScreen()),
  GetPage(
      name: ForgotOtpVerificationScreen.routeName,
      page: () => const ForgotOtpVerificationScreen()),
  GetPage(
      name: ResetPasswordScreen.routeName,
      page: () => const ResetPasswordScreen()),
  GetPage(name: ForgotDode.routeName, page: () => const ForgotDode()),
  //GetPage(name: DashboadScreen.routeName, page: () => const DashboadScreen()),
  GetPage(name: DashboadScreen2.routeName, page: () => const DashboadScreen2()),
  GetPage(name: ProfileScreen.routeName, page: () => const ProfileScreen()),
  GetPage(name: ContactsScreen.routeName, page: () => const ContactsScreen()),
  GetPage(name: ShareScreen.routeName, page: () => const ShareScreen()),
  GetPage(name: SettingsScreen.routeName, page: () => const SettingsScreen()),
  GetPage(name: DetailsScreen.routeName, page: () => const DetailsScreen()),
  GetPage(name: PremiumScreen.routeName, page: () => const PremiumScreen()),
  GetPage(name: EditCartScreen.routeName, page: () => const EditCartScreen()),
  GetPage(
      name: PreviewCartScreen.routeName, page: () => const PreviewCartScreen()),
  GetPage(
      name: ContactDetailsScreen.routeName,
      page: () => const ContactDetailsScreen()),
  GetPage(name: SendScreen.routeName, page: () => const SendScreen()),
  GetPage(
      name: RecommenaedDetails.routeName,
      page: () => const RecommenaedDetails()),
  // GetPage(name: ComposeScreen.routeName, page: () => const ComposeScreen()),
  GetPage(name: AddButton.routeName, page: () => const AddButton()),
  GetPage(
      name: ContactsDetailsScreen.routeName,
      page: () => const ContactsDetailsScreen()),
  // GetPage(
  //     name: TextYourCardScreen.routeName,
  //     page: () => const TextYourCardScreen()),
  GetPage(name: EditImageScreen.routeName, page: () => const EditImageScreen()),
  GetPage(
      name: ActivateAMyBeezyScreen.routeName,
      page: () => const ActivateAMyBeezyScreen()),
  GetPage(
      name: HowToPopScanScreen.routeName,
      page: () => const HowToPopScanScreen()),
  GetPage(
      name: EditAccountEmailScreen.routeName,
      page: () => const EditAccountEmailScreen()),
  GetPage(name: EditProfileLink.routeName, page: () => const EditProfileLink()),
  GetPage(
      name: MyBeezyJoinAccount.routeName,
      page: () => const MyBeezyJoinAccount()),
  GetPage(
      name: MyBeezyAmbassador.routeName, page: () => const MyBeezyAmbassador()),
];
