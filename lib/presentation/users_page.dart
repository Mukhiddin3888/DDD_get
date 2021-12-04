import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DDD'),),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
        return const Card(
          child:
            ListTile(title:  Text('items name'),),);
      },),
    );

  }
}
