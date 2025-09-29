// ValueNotifier: holds the data and notifies listeners when the data changes
// ValueListenableBuilder: listens to the ValueNotifier and rebuilds the UI when notified it does not need setState
// check the navbar_widgets.dart for implementation
import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
