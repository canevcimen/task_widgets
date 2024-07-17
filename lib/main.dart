import 'package:flutter/material.dart';
import 'package:neon_academy2/screens/linear_progress_screen.dart';
import 'package:neon_academy2/screens/passanger_detail_screen.dart';
import 'package:neon_academy2/screens/scroll_view_screen.dart';
import 'package:neon_academy2/screens/stack_view_screen.dart';
import 'package:neon_academy2/screens/tabBar_screen.dart';
import 'package:neon_academy2/widgets/data_table_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Scaffold(
        
          body: Center(
            child: TabbarScreen(),
          ),
        ),
      ),
    );
  }
}

