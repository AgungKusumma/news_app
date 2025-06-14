import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/presentation/home/home_body_widget.dart';
import 'package:news_app/provider/auth/auth_provider.dart';
import 'package:news_app/provider/home/story_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
    Future.microtask(() {
      context.read<StoryProvider>().fetchStory();
    });
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<StoryProvider>().fetchMoreStories();
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Stories',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 2,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () async {
              await auth.logout();
              context.goNamed('login');
            },
          ),
        ],
      ),
      body: HomeBodyWidget(scrollController: _scrollController),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () async {
            final result = await context.pushNamed('upload');

            if (result == true && context.mounted) {
              context.read<StoryProvider>().fetchStory();
            }
          },
          backgroundColor: Colors.blue,
          tooltip: 'Upload Story',
          child: const Icon(Icons.upload),
        ),
      ),
    );
  }
}
