import 'package:flutter/material.dart';
import 'package:flutter_fastlane/views/data/notifiers.dart';
import 'package:flutter_fastlane/views/pages/favourite_page.dart';
import 'package:flutter_fastlane/views/pages/home_page.dart';
import 'package:flutter_fastlane/views/pages/settings.dart';
import 'package:flutter_fastlane/views/widgets/navbar_widgets.dart';

List<Widget> pages = [HomePage(), FavouritePage(), SettingsPage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          print("Hello World");
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavbarWidgets(),

      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, value, child) {
          return pages[value];
        },
      ),
    );
  }
}
