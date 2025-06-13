import 'package:flutter/material.dart';
import 'package:news_app/data/network/api_services.dart';
import 'package:news_app/provider/auth/auth_result_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  final ApiService apiService;

  AuthResultState _state = AuthNoneState();

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
    _state = AuthLoadingState();
    notifyListeners();

    try {
      final res = await apiService.register(name, email, password);
      if (res.error) {
        _state = AuthErrorState(res.message);
      } else {
        _state = AuthSuccessState(res.message, data: null);
      }
    } catch (e) {
      _state = AuthErrorState(e.toString());
    }
    notifyListeners();
  }

  Future<void> login(String email, String password) async {
    _state = AuthLoadingState();
    notifyListeners();

    try {
      final res = await apiService.login(email, password);
      if (res.error) {
        _state = AuthErrorState(res.message);
      } else {
        _token = res.loginResult.token;
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', _token!);

        _state = AuthSuccessState(res.message, data: res.loginResult);
      }
    } catch (e) {
      _state = AuthErrorState(e.toString());
    }
    notifyListeners();
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    _token = null;
    _state = AuthNoneState();
    notifyListeners();
  }

  void clearState() {
    _state = AuthNoneState();
    notifyListeners();
  }
}
