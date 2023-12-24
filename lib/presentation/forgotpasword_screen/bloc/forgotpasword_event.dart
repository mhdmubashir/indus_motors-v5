// ignore_for_file: must_be_immutable

part of 'forgotpasword_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Forgotpasword widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ForgotpaswordEvent extends Equatable {}

/// Event that is dispatched when the Forgotpasword widget is first created.
class ForgotpaswordInitialEvent extends ForgotpaswordEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends ForgotpaswordEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
