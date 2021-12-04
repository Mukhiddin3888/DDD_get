import 'package:ddd_get_stream_test/injection.dart';
import 'package:ddd_get_stream_test/presentation/users_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UsersPage(),
    );
  }
}
