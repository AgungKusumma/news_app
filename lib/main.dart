import 'package:flutter/material.dart';
import 'package:news_app/data/network/api_services.dart';
import 'package:news_app/provider/auth/auth_provider.dart';
import 'package:news_app/provider/home/story_provider.dart';
import 'package:news_app/provider/image/home_image_provider.dart';
import 'package:news_app/provider/image/upload_provider.dart';
import 'package:news_app/routes/app_router.dart';
import 'package:news_app/style/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(apiService: ApiService()),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeImageProvider(),
        ),
        ChangeNotifierProxyProvider<AuthProvider, UploadProvider>(
          create: (context) => UploadProvider(
            apiService: ApiService(),
            authProvider: Provider.of<AuthProvider>(context, listen: false),
          ),
          update: (context, authProvider, previous) => UploadProvider(
            apiService: ApiService(),
            authProvider: authProvider,
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => StoryProvider(
            apiService: ApiService(),
            authProvider: Provider.of<AuthProvider>(context, listen: false),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AuthProvider authProvider;

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context, listen: false);

    return FutureBuilder(
      future: auth.loadToken(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          );
        }
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Story App',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          routerConfig: buildRouter(auth),
        );
      },
    );
  }
}
