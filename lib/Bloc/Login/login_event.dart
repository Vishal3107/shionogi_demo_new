part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class OpenTermsEvent extends LoginEvent {
  const OpenTermsEvent();

  @override
  List<Object> get props => [];
}

class LoginButtonEvent extends LoginEvent{
  final BuildContext context;
  const LoginButtonEvent({required this.context});
  @override
  List<Object> get props => [context];
}

class VisibilityToggleEvent extends LoginEvent{
   // final bool isVisible;
  const VisibilityToggleEvent();
  @override
  List<Object> get props => [];
}
// {this.isVisible = false}isVisible