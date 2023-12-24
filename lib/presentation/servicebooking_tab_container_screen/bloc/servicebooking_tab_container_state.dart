// ignore_for_file: must_be_immutable

part of 'servicebooking_tab_container_bloc.dart';

/// Represents the state of ServicebookingTabContainer in the application.
class ServicebookingTabContainerState extends Equatable {
  ServicebookingTabContainerState({this.servicebookingTabContainerModelObj});

  ServicebookingTabContainerModel? servicebookingTabContainerModelObj;

  @override
  List<Object?> get props => [
        servicebookingTabContainerModelObj,
      ];
  ServicebookingTabContainerState copyWith(
      {ServicebookingTabContainerModel? servicebookingTabContainerModelObj}) {
    return ServicebookingTabContainerState(
      servicebookingTabContainerModelObj: servicebookingTabContainerModelObj ??
          this.servicebookingTabContainerModelObj,
    );
  }
}
