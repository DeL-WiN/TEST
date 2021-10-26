import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/User_buttons/User_button.dart';
import 'package:flutter_app/bloc/User_Bloc.dart';
import 'package:flutter_app/servce/User_Repasitori.dart';
import 'package:flutter_app/user_list/user_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AudioBooks extends StatelessWidget {
final usersRepazitory = Repazitory();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
create: (context) => UserBloc(usersRepazitory: usersRepazitory),
      child: Scaffold(
        appBar: AppBar(
          title:
          Text('AudioBooks'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ActionButtons(),
            Expanded(child: UserList()),

          ],
        ),
      ),
    );
      Scaffold(
      appBar: AppBar(
        title:
        Text('AudioBooks'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ActionButtons(),
          Expanded(child: UserList()),

        ],
      ),
    );
  }
}