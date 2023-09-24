import 'dart:convert';
import 'dart:ui';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setThemeData(String value) {
    return _sharedPreferences!.setString('themeData', value);
  }

  String getThemeData() {
    try {
      return _sharedPreferences!.getString('themeData')!;
    } catch (e) {
      return 'primary';
    }
  }

  Future<void> setRole(String value) {
    return _sharedPreferences!.setString('role', value);
  }

  String getRole() {
    try {
      return _sharedPreferences!.getString('role') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setName(String value) {
    return _sharedPreferences!.setString('name', value);
  }

  String getName() {
    try {
      return _sharedPreferences!.getString('name') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setEmail(String value) {
    return _sharedPreferences!.setString('email', value);
  }

  String getEmail() {
    try {
      return _sharedPreferences!.getString('email') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setUsername(String value) {
    return _sharedPreferences!.setString('username', value);
  }

  String getUsername() {
    try {
      return _sharedPreferences!.getString('username') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setStatus(String value) {
    return _sharedPreferences!.setString('status', value);
  }

  String getStatus() {
    try {
      return _sharedPreferences!.getString('status') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setMessage(String value) {
    return _sharedPreferences!.setString('message', value);
  }

  String getMessage() {
    try {
      return _sharedPreferences!.getString('message') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setExpiredtoken(String value) {
    return _sharedPreferences!.setString('expiredtoken', value);
  }

  String getExpiredtoken() {
    try {
      return _sharedPreferences!.getString('expiredtoken') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setToken(String value) {
    return _sharedPreferences!.setString('token', value);
  }

  String getToken() {
    try {
      return _sharedPreferences!.getString('token') ?? '';
    } catch (e) {
      return '';
    }
  }
}
