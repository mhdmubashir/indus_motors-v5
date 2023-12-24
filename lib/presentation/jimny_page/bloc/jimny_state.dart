// ignore_for_file: must_be_immutable

part of 'jimny_bloc.dart';

/// Represents the state of Jimny in the application.
class JimnyState extends Equatable {
  JimnyState({this.jimnyModelObj});

  JimnyModel? jimnyModelObj;

  @override
  List<Object?> get props => [
        jimnyModelObj,
      ];
  JimnyState copyWith({JimnyModel? jimnyModelObj}) {
    return JimnyState(
      jimnyModelObj: jimnyModelObj ?? this.jimnyModelObj,
    );
  }
}
