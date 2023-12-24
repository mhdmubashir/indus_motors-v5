// ignore_for_file: must_be_immutable

part of 'userinfo_bloc.dart';

/// Represents the state of Userinfo in the application.
class UserinfoState extends Equatable {
  UserinfoState({this.userinfoModelObj});

  UserinfoModel? userinfoModelObj;

  @override
  List<Object?> get props => [
        userinfoModelObj,
      ];
  UserinfoState copyWith({UserinfoModel? userinfoModelObj}) {
    return UserinfoState(
      userinfoModelObj: userinfoModelObj ?? this.userinfoModelObj,
    );
  }
}
