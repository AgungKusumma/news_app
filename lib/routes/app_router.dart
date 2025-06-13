import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/presentation/camera/camera_screen.dart';
import 'package:news_app/presentation/detail/story_detail_screen.dart';
import 'package:news_app/presentation/home/home_screen.dart';
import 'package:news_app/presentation/login/login_screen.dart';
import 'package:news_app/presentation/register/register_screen.dart';
import 'package:news_app/presentation/upload/upload_screen.dart';
import 'package:news_app/provider/auth/auth_provider.dart';
import 'package:provider/provider.dart';

GoRouter buildRouter(AuthProvider auth) {
  return GoRouter(
    refreshListenable: auth,
    initialLocation: '/home',
    redirect: (BuildContext context, GoRouterState state) {
      final auth = Provider.of<AuthProvider>(context, listen: false);

      final isAuthPage = state.matchedLocation == '/login' ||
          state.matchedLocation == '/register';

      if (!auth.isLoggedIn && !isAuthPage) return '/login';
      if (auth.isLoggedIn && isAuthPage) return '/home';

      return null;
    },
    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        name: 'register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/story-detail/:id',
        name: 'storyDetail',
        builder: (context, state) {
          final id = state.pathParameters['id'];
          return StoryDetailScreen(storyId: id!);
        },
      ),
      GoRoute(
        path: '/camera',
        name: 'camera',
        builder: (context, state) {
          final cameras = state.extra as List<CameraDescription>;
          return CameraScreen(cameras: cameras);
        },
      ),
      GoRoute(
        path: '/upload',
        name: 'upload',
        builder: (context, state) => const UploadScreen(),
      ),
    ],
  );
}
