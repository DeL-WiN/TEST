import 'package:flutter_app/bloc/User_Bloc.dart';
import 'package:flutter_app/models/User.dart';
import 'package:flutter_app/servce/User_API_Provider.dart';
import 'package:flutter_app/user_list/user_list.dart';

class Repazitory {
  Provaider _usersProvider = Provaider();

  Future<List<Provaider>> getAllUsers() => _usersProvider.getUser();
}
