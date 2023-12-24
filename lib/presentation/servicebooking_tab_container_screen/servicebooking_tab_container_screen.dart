import 'bloc/servicebooking_tab_container_bloc.dart';
import 'models/servicebooking_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:indus_motors/core/app_export.dart';
import 'package:indus_motors/presentation/carenquiry_page/carenquiry_page.dart';
import 'package:indus_motors/presentation/servicebooking_page/servicebooking_page.dart';
import 'package:indus_motors/presentation/userinfo_page/userinfo_page.dart';

class ServicebookingTabContainerScreen extends StatefulWidget {
  const ServicebookingTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ServicebookingTabContainerScreenState createState() =>
      ServicebookingTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ServicebookingTabContainerBloc>(
      create: (context) =>
          ServicebookingTabContainerBloc(ServicebookingTabContainerState(
        servicebookingTabContainerModelObj: ServicebookingTabContainerModel(),
      ))
            ..add(ServicebookingTabContainerInitialEvent()),
      child: ServicebookingTabContainerScreen(),
    );
  }
}

class ServicebookingTabContainerScreenState
    extends State<ServicebookingTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServicebookingTabContainerBloc,
        ServicebookingTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 44.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          _buildIndusMotorsRow(context),
                          SizedBox(height: 19.v),
                          _buildTabview(context),
                          SizedBox(
                            height: 663.v,
                            child: TabBarView(
                              controller: tabviewController,
                              children: [
                                ServicebookingPage(),
                                CarenquiryPage(),
                                CarenquiryPage(),
                                UserinfoPage(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildIndusMotorsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 13.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 18.v),
            child: Text(
              "lbl_indus_motors2".tr,
              style: CustomTextStyles.headlineSmallPrimary,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLogoMoteursIndus500x333,
            height: 42.v,
            width: 87.h,
            margin: EdgeInsets.only(bottom: 6.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 26.v,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      ),
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.redA700,
        unselectedLabelColor: appTheme.black900,
        tabs: [
          Tab(
            child: Text(
              "lbl_service_booking".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_car_enquiry".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_alerts".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_user".tr,
            ),
          ),
        ],
      ),
    );
  }
}
