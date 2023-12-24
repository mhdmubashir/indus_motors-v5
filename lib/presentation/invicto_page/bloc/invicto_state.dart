// ignore_for_file: must_be_immutable

part of 'invicto_bloc.dart';

/// Represents the state of Invicto in the application.
class InvictoState extends Equatable {
  InvictoState({this.invictoModelObj});

  InvictoModel? invictoModelObj;

  @override
  List<Object?> get props => [
        invictoModelObj,
      ];
  InvictoState copyWith({InvictoModel? invictoModelObj}) {
    return InvictoState(
      invictoModelObj: invictoModelObj ?? this.invictoModelObj,
    );
  }
}
