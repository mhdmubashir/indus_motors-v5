import 'package:flutter/material.dart';
import 'package:indus_motors/presentation/indussplash_screen/indussplash_screen.dart';
import 'package:indus_motors/presentation/forgotpasword_screen/forgotpasword_screen.dart';
import 'package:indus_motors/presentation/signup_screen/signup_screen.dart';
import 'package:indus_motors/presentation/otpscreen_screen/otpscreen_screen.dart';
import 'package:indus_motors/presentation/signin_screen/signin_screen.dart';
import 'package:indus_motors/presentation/servicebooking_tab_container_screen/servicebooking_tab_container_screen.dart';
import 'package:indus_motors/presentation/acservice_screen/acservice_screen.dart';
import 'package:indus_motors/presentation/services_screen/services_screen.dart';
import 'package:indus_motors/presentation/fullbodypainting_screen/fullbodypainting_screen.dart';
import 'package:indus_motors/presentation/servicesnotadded_screen/servicesnotadded_screen.dart';
import 'package:indus_motors/presentation/feedbacksuggestion_screen/feedbacksuggestion_screen.dart';
import 'package:indus_motors/presentation/feedbackothers_screen/feedbackothers_screen.dart';
import 'package:indus_motors/presentation/wheel_alignment_screen/wheel_alignment_screen.dart';
import 'package:indus_motors/presentation/carspa_screen/carspa_screen.dart';
import 'package:indus_motors/presentation/scratchremovel_screen/scratchremovel_screen.dart';
import 'package:indus_motors/presentation/waterwashing_screen/waterwashing_screen.dart';
import 'package:indus_motors/presentation/submittedsuccessfully_screen/submittedsuccessfully_screen.dart';
import 'package:indus_motors/presentation/selectgnrlsrv_screen/selectgnrlsrv_screen.dart';
import 'package:indus_motors/presentation/gspickdrop_screen/gspickdrop_screen.dart';
import 'package:indus_motors/presentation/enginecheckup_screen/enginecheckup_screen.dart';
import 'package:indus_motors/presentation/emergencyservice_screen/emergencyservice_screen.dart';
import 'package:indus_motors/presentation/gsoilchange_screen/gsoilchange_screen.dart';
import 'package:indus_motors/presentation/gsbodycheckup_screen/gsbodycheckup_screen.dart';
import 'package:indus_motors/presentation/gsperoidiccheckup_screen/gsperoidiccheckup_screen.dart';
import 'package:indus_motors/presentation/slctgs_screen/slctgs_screen.dart';
import 'package:indus_motors/presentation/interiorcar_screen/interiorcar_screen.dart';
import 'package:indus_motors/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String indussplashScreen = '/indussplash_screen';

  static const String forgotpaswordScreen = '/forgotpasword_screen';

  static const String signupScreen = '/signup_screen';

  static const String otpscreenScreen = '/otpscreen_screen';

  static const String signinScreen = '/signin_screen';

  static const String wagnorbsfourPage = '/wagnorbsfour_page';

  static const String spressoPage = '/spresso_page';

  static const String homemainPage = '/homemain_page';

  static const String ertigaPage = '/ertiga_page';

  static const String celerioPage = '/celerio_page';

  static const String invictoPage = '/invicto_page';

  static const String brezzaPage = '/brezza_page';

  static const String jimnyPage = '/jimny_page';

  static const String ignisPage = '/ignis_page';

  static const String ciazPage = '/ciaz_page';

  static const String swiftPage = '/swift_page';

  static const String userinfoPage = '/userinfo_page';

  static const String servicebookingPage = '/servicebooking_page';

  static const String servicebookingTabContainerScreen =
      '/servicebooking_tab_container_screen';

  static const String carenquiryPage = '/carenquiry_page';

  static const String acserviceScreen = '/acservice_screen';

  static const String servicesScreen = '/services_screen';

  static const String fullbodypaintingScreen = '/fullbodypainting_screen';

  static const String servicesnotaddedScreen = '/servicesnotadded_screen';

  static const String feedbacksuggestionScreen = '/feedbacksuggestion_screen';

  static const String feedbackothersScreen = '/feedbackothers_screen';

  static const String wheelAlignmentScreen = '/wheel_alignment_screen';

  static const String carspaScreen = '/carspa_screen';

  static const String scratchremovelScreen = '/scratchremovel_screen';

  static const String waterwashingScreen = '/waterwashing_screen';

  static const String submittedsuccessfullyScreen =
      '/submittedsuccessfully_screen';

  static const String selectgnrlsrvScreen = '/selectgnrlsrv_screen';

  static const String gspickdropScreen = '/gspickdrop_screen';

  static const String enginecheckupScreen = '/enginecheckup_screen';

  static const String emergencyserviceScreen = '/emergencyservice_screen';

  static const String gsoilchangeScreen = '/gsoilchange_screen';

  static const String gsbodycheckupScreen = '/gsbodycheckup_screen';

  static const String gsperoidiccheckupScreen = '/gsperoidiccheckup_screen';

  static const String slctgsScreen = '/slctgs_screen';

  static const String interiorcarScreen = '/interiorcar_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        indussplashScreen: IndussplashScreen.builder,
        forgotpaswordScreen: ForgotpaswordScreen.builder,
        signupScreen: SignupScreen.builder,
        otpscreenScreen: OtpscreenScreen.builder,
        signinScreen: SigninScreen.builder,
        servicebookingTabContainerScreen:
            ServicebookingTabContainerScreen.builder,
        acserviceScreen: AcserviceScreen.builder,
        servicesScreen: ServicesScreen.builder,
        fullbodypaintingScreen: FullbodypaintingScreen.builder,
        servicesnotaddedScreen: ServicesnotaddedScreen.builder,
        feedbacksuggestionScreen: FeedbacksuggestionScreen.builder,
        feedbackothersScreen: FeedbackothersScreen.builder,
        wheelAlignmentScreen: WheelAlignmentScreen.builder,
        carspaScreen: CarspaScreen.builder,
        scratchremovelScreen: ScratchremovelScreen.builder,
        waterwashingScreen: WaterwashingScreen.builder,
        submittedsuccessfullyScreen: SubmittedsuccessfullyScreen.builder,
        selectgnrlsrvScreen: SelectgnrlsrvScreen.builder,
        gspickdropScreen: GspickdropScreen.builder,
        enginecheckupScreen: EnginecheckupScreen.builder,
        emergencyserviceScreen: EmergencyserviceScreen.builder,
        gsoilchangeScreen: GsoilchangeScreen.builder,
        gsbodycheckupScreen: GsbodycheckupScreen.builder,
        gsperoidiccheckupScreen: GsperoidiccheckupScreen.builder,
        slctgsScreen: SlctgsScreen.builder,
        interiorcarScreen: InteriorcarScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: IndussplashScreen.builder
      };
}
