// ignore_for_file: must_be_immutable

part of 'celerio_bloc.dart';

/// Represents the state of Celerio in the application.
class CelerioState extends Equatable {
  CelerioState({this.celerioModelObj});

  CelerioModel? celerioModelObj;

  @override
  List<Object?> get props => [
        celerioModelObj,
      ];
  CelerioState copyWith({CelerioModel? celerioModelObj}) {
    return CelerioState(
      celerioModelObj: celerioModelObj ?? this.celerioModelObj,
    );
  }
}
