import 'package:flutter/foundation.dart' show immutable;
import 'package:equatable/equatable.dart';
import 'package:tena/Services/Auth/auth_user.dart';

@immutable
// General class to be used by other classes 
// takes two arguments is loading and loading text 
abstract class AuthState {
  final bool isLoading;
  final String? loadingText;
  const AuthState({
    required this.isLoading,
    this.loadingText = 'please wait a moment',
  });
}

// class state to initialize firebase
class AuthStateUnitialized extends AuthState {
  const AuthStateUnitialized({required bool isLoading}): super(isLoading: isLoading);
}

// class state when a user has been registered 
class AuthStateRegistered extends AuthState {
  const AuthStateRegistered({required bool isLoading}): super(isLoading: isLoading);
}

// class state when registering a user
class AuthStateRegistering extends AuthState {
  final Exception? exception;
  const AuthStateRegistering({required this.exception, required bool isLoading}) : super(isLoading: isLoading);
}

//class state when a user clicks on forgot password 
// takes on two other arguments to check for an exception and for if an email has been sent 
class AuthStateForgotPassword extends AuthState {
  final Exception? exception;

  final bool hasSentEmail;
  const AuthStateForgotPassword({ required this.exception,  required this.hasSentEmail,  required bool isLoading}) : super(isLoading: isLoading);
}


// clas state for when a user has logged.
class AuthStateLoggedIn extends AuthState {
  final AuthUser user;
  const AuthStateLoggedIn({required this.user, required bool isLoading}) : super(isLoading:  isLoading);
}


// class state for when a user is not verified
class AuthStateNeedsVerification extends AuthState {
  const AuthStateNeedsVerification({required bool isLoading}) : super(isLoading:  isLoading);
}

// class state for when a user is not logged in
class AuthStateLoggedOut extends AuthState with EquatableMixin {
  final Exception? exception;
  const AuthStateLoggedOut({
    required this.exception,
    required bool isLoading,
    String? loadingText
  }): super (isLoading:  isLoading, loadingText: loadingText,);

  @override
  // TODO: implement props
  List<Object?> get props => [exception, isLoading];
}
