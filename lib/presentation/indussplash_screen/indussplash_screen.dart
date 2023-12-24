import 'bloc/indussplash_bloc.dart';import 'models/indussplash_model.dart';import 'package:flutter/material.dart';import 'package:indus_motors/core/app_export.dart';class IndussplashScreen extends StatelessWidget {const IndussplashScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<IndussplashBloc>(create: (context) => IndussplashBloc(IndussplashState(indussplashModelObj: IndussplashModel()))..add(IndussplashInitialEvent()), child: IndussplashScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<IndussplashBloc, IndussplashState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 69.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Spacer(flex: 51), CustomImageView(imagePath: ImageConstant.imgMoteursIndusLogo, height: 153.v, width: 360.h, onTap: () {onTapImgMoteursIndusLogo(context);}), Spacer(flex: 48), Text("lbl_indusmotors".tr, style: CustomTextStyles.bodyMediumWhiteA700Light)]))));}); } 
/// Navigates to the signinScreen when the action is triggered.
onTapImgMoteursIndusLogo(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signinScreen, ); } 
 }
