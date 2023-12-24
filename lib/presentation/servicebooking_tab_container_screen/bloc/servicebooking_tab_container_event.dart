// ignore_for_file: must_be_immutable

part of 'servicebooking_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ServicebookingTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ServicebookingTabContainerEvent extends Equatable {}

/// Event that is dispatched when the ServicebookingTabContainer widget is first created.
class ServicebookingTabContainerInitialEvent
    extends ServicebookingTabContainerEvent {
  @override
  List<Object?> get props => [];
}
