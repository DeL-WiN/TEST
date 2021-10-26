//
// import 'dart:convert' as convert;
// import 'package:flutter_app/main.dart';
// import 'package:http/http.dart' as http;
// var author, label, imPrice;
// class Provaider {
//   //https://itunes.apple.com/us/rss/topaudiobooks/limit=25/json
//   Future<List<Provaider>> getUser() async {
//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       var userJson = convert.jsonDecode(response.body);
//       author = userJson['feed']["author"]["name"]["label"];
//       label = userJson['feed']['entry'][0]['im:name']['label'];
//       imPrice = userJson['feed']['entry'][0]['m:price']['label'];
//
//       // print(userJson["feed"]["author"]["name"]["label"]);
//      // return userJson.map((json) => User.fromJson(json)).toList();
//     } else {
//       throw Exception('Eror fetceninadadg users');
//     }
//   }
// //   final response = await http.get(url);
// //
// //   if (response.statusCode == 200) {
// //     print(json.decode(response.body));
// //     // var userJson = convert.jsonDecode(response.body);
// //     final List<dynamic> userJson = json.decode(response.body);
// //
// //     return userJson.map((json) => User.fromJson(json)).toList();
// //   } else {
// //     throw Exception('Eror fetceninadadg users');
// //   }
// // }
// }
