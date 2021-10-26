import 'package:flutter_app/bloc/Bloc_Event.dart';
import 'package:flutter_app/bloc/Bloc_State.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/models/User.dart';
import 'package:flutter_app/servce/User_API_Provider.dart';
import 'package:flutter_app/servce/User_Repasitori.dart';
import 'package:flutter_app/user_list/user_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class UserBloc extends Bloc<UserEvent, UserState> {
  final Repazitory usersRepazitory;

  UserBloc({this.usersRepazitory}) : assert(usersRepazitory != null), super(null);

  @override
  UserState get initialState => UserEmptyState();

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is UserLoadEvent) {
      yield UserLoadingState();
      try {
        final List _loadedUserList = await usersRepazitory.getAllUsers();
        yield UserLoadedState(loadedUser: _loadedUserList);
      } catch (_) {
        yield UserErrorState();
      }
    } else if (event is UserClearEvent) {
      yield UserEmptyState();
    }
  }
}


class Provaider {
  //https://itunes.apple.com/us/rss/topaudiobooks/limit=25/json
  Future<List> getUser() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var userJson = convert.jsonDecode(response.body);
      author = userJson['feed']["author"]["name"]["label"];
      label = userJson['feed']['entry'][0]['im:name']['label'];
      imPrice = userJson['feed']['entry'][0]['m:price']['label'];

      // print(userJson["feed"]["author"]["name"]["label"]);
      // return userJson.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Eror fetceninadadg users');
    }
  }
}