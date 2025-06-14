import 'package:flutter/material.dart';
import 'package:news_app/data/network/api_services.dart';
import 'package:news_app/provider/auth/auth_result_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  final ApiService apiService;

  AuthResultState _state = const AuthResultState.none();

  AuthResultState get state => _state;

  String? _token;

  String? get token => _token;

  bool get isLoggedIn => _token != null;

  AuthProvider({required this.apiService});

  Future<void> loadToken() async {
    final prefs = await SharedPreferences.getInstance();
    _token = prefs.getString('token');
    notifyListeners();
  }

  Future<void> register(String name, String email, String password) async {
    _state = const AuthResultState.loading();
    notifyListeners();

    try {
      final res = await apiService.register(name, email, password);
      _state = res.error
          ? AuthResultState.error(res.message)
          : AuthResultState.success(res.message);
    } catch (e) {
      _state = AuthResultState.error(e.toString());
    }
    notifyListeners();
  }

  Future<void> login(String email, String password) async {
    _state = const AuthResultState.loading();
    notifyListeners();

    try {
      final res = await apiService.login(email, password);
      if (res.error) {
        _state = AuthResultState.error(res.message);
      } else {
        _token = res.loginResult.token;
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', _token!);
        _state = AuthResultState.success(res.message, data: res.loginResult);
      }
    } catch (e) {
      _state = AuthResultState.error(e.toString());
    }
    notifyListeners();
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    _token = null;
    _state = const AuthResultState.none();
    notifyListeners();
  }

  void clearState() {
    _state = const AuthResultState.none();
    notifyListeners();
  }
}
