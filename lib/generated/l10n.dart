// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Not internet connection`
  String get not_internet_connection {
    return Intl.message(
      'Not internet connection',
      name: 'not_internet_connection',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Enter the password`
  String get enter_the_password {
    return Intl.message(
      'Enter the password',
      name: 'enter_the_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter the login`
  String get enter_the_login {
    return Intl.message(
      'Enter the login',
      name: 'enter_the_login',
      desc: '',
      args: [],
    );
  }

  /// `Registration`
  String get registration {
    return Intl.message(
      'Registration',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `Enter the first name`
  String get enter_the_first_name {
    return Intl.message(
      'Enter the first name',
      name: 'enter_the_first_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter the last name`
  String get enter_the_last_name {
    return Intl.message(
      'Enter the last name',
      name: 'enter_the_last_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter the email`
  String get enter_the_email {
    return Intl.message(
      'Enter the email',
      name: 'enter_the_email',
      desc: '',
      args: [],
    );
  }

  /// `No value`
  String get no_value {
    return Intl.message(
      'No value',
      name: 'no_value',
      desc: '',
      args: [],
    );
  }

  /// `The field must be more than 6 characters`
  String get small_field_error {
    return Intl.message(
      'The field must be more than 6 characters',
      name: 'small_field_error',
      desc: '',
      args: [],
    );
  }

  /// `Image`
  String get image {
    return Intl.message(
      'Image',
      name: 'image',
      desc: '',
      args: [],
    );
  }

  /// `Choose from the library`
  String get choose_from_the_library {
    return Intl.message(
      'Choose from the library',
      name: 'choose_from_the_library',
      desc: '',
      args: [],
    );
  }

  /// `Take a photo`
  String get take_a_photo {
    return Intl.message(
      'Take a photo',
      name: 'take_a_photo',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect email!`
  String get incorrect_email {
    return Intl.message(
      'Incorrect email!',
      name: 'incorrect_email',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error!`
  String get unknown_error {
    return Intl.message(
      'Unknown error!',
      name: 'unknown_error',
      desc: '',
      args: [],
    );
  }

  /// `The user already exists!`
  String get the_user_already_exists {
    return Intl.message(
      'The user already exists!',
      name: 'the_user_already_exists',
      desc: '',
      args: [],
    );
  }

  /// `The operation is not allowed!`
  String get the_operation_is_not_allowed {
    return Intl.message(
      'The operation is not allowed!',
      name: 'the_operation_is_not_allowed',
      desc: '',
      args: [],
    );
  }

  /// `Weak password!`
  String get weak_password {
    return Intl.message(
      'Weak password!',
      name: 'weak_password',
      desc: '',
      args: [],
    );
  }

  /// `Success registration!`
  String get success_registration {
    return Intl.message(
      'Success registration!',
      name: 'success_registration',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email!`
  String get invalid_email {
    return Intl.message(
      'Invalid email!',
      name: 'invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `User disabled!`
  String get user_disabled {
    return Intl.message(
      'User disabled!',
      name: 'user_disabled',
      desc: '',
      args: [],
    );
  }

  /// `User not found!`
  String get user_not_found {
    return Intl.message(
      'User not found!',
      name: 'user_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password!`
  String get wrong_password {
    return Intl.message(
      'Wrong password!',
      name: 'wrong_password',
      desc: '',
      args: [],
    );
  }

  /// `Upload avatar failure!`
  String get upload_avatar_failure {
    return Intl.message(
      'Upload avatar failure!',
      name: 'upload_avatar_failure',
      desc: '',
      args: [],
    );
  }

  /// `Add user data failure!`
  String get add_user_data_failure {
    return Intl.message(
      'Add user data failure!',
      name: 'add_user_data_failure',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat {
    return Intl.message(
      'Chat',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Sign In With Google`
  String get sign_in_with_google {
    return Intl.message(
      'Sign In With Google',
      name: 'sign_in_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google failure`
  String get sign_in_with_google_failure {
    return Intl.message(
      'Sign in with Google failure',
      name: 'sign_in_with_google_failure',
      desc: '',
      args: [],
    );
  }

  /// `Get user data with google failure`
  String get get_user_data_with_google_failure {
    return Intl.message(
      'Get user data with google failure',
      name: 'get_user_data_with_google_failure',
      desc: '',
      args: [],
    );
  }

  /// `Sign Out`
  String get sign_out {
    return Intl.message(
      'Sign Out',
      name: 'sign_out',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Facebook`
  String get sign_in_with_facebook {
    return Intl.message(
      'Sign in with Facebook',
      name: 'sign_in_with_facebook',
      desc: '',
      args: [],
    );
  }

  /// `Successful Authorization`
  String get successful_authorization {
    return Intl.message(
      'Successful Authorization',
      name: 'successful_authorization',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google failure`
  String get signInWithGoogleFailure {
    return Intl.message(
      'Sign in with Google failure',
      name: 'signInWithGoogleFailure',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
