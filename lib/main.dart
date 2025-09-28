import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// stateless widget
// material app
// scaffold

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Fastlane'),
          centerTitle: true,
          // leading: const Icon(Icons.login),
          // actions: [
          //   IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          // ],
          // backgroundColor: Colors.teal.shade700,
        ),

        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text('John Doe'),
                accountEmail: const Text('john.doe@example.com'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Hello WWorld");
          },
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          selectedIndex: 2,
        ),
      ),
    );
  }
}
