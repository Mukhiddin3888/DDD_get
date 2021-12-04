import 'package:ddd_get_stream_test/application/user_bloc.dart';
import 'package:ddd_get_stream_test/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<UserBloc>(),
      child: Scaffold(
        appBar: AppBar(title: const Text('DDD'),),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if(state is Initial){
              BlocProvider.of<UserBloc>(context).add(const UserEvent.getUsers());
            }
            if(state is DataInProgress ){
              return const Center(child: CircularProgressIndicator(),);
            }
            if(state is LoadSuccess){
              return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const Card(
                    child:
                    ListTile(title: Text('items name'),),);
                },);

            }
            if(state is LoadFailure ){
              return const Text('user data failure check it');
            }
            else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
