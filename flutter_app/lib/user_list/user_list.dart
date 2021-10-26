import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bloc/Bloc_State.dart';
import 'package:flutter_app/bloc/User_Bloc.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

var author, label, imPrice;

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is UserEmptyState) {
          return Center(
            child: Text(
              'No data recevd',
              style: TextStyle(fontSize: 20.0),
            ),
          );
        }
        if (state is UserLoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is UserLoadedState) {
          return ListView.builder(
              itemCount: state.loadedUser.length,
              itemBuilder: (context, index) => Container(
                    color: index % 2 == 0 ? Colors.blue : Colors.cyan,
                    child: ListTile(
                      trailing: Text(
                        ' ${state.loadedUser[index].imPrice}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      leading: FloatingActionButton(
                        child: Icon(Icons.ac_unit),
                        onPressed: () {},
                      ),
                      title: Column(
                        children: [
                          Text(
                            '${state.loadedUser[index].author}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          // Text('${state.loadedUser[index].label}', style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ));
        }
        if (state is UserErrorState) {
          return Center(
            child: Text(
              'Error fetcinqqg users',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          );
        }
        return Text('ERROR');
      },
    );
  }
}


