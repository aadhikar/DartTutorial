// OBJECTIVES
// 1. Future
// 2. Async
// 3. Await

// Note:
// 			1. The function queues up work to be done and returns an uncompleted Future object.
// 			2. Later, when the operation is finished, the Future object completes with a value or with an error.

import 'dart:async';
import 'dart:convert';
import 'dart:html';

void main() {
  getUsersDetail('https://jsonplaceholder.typicode.com/users');
}

Future<void> getUsersDetail(url) async {
  try {
    // Make the GET request
    final jsonString = await HttpRequest.getString(url);
    // The request succeeded. Process the JSON.
    for (final userDetail in json.decode(jsonString)) {
      for (var key in userDetail.keys) {
        print(key.toString() + "  -->  " + userDetail[key].toString());
      }

      print("");
//       userDetail.keys.forEach((element) => print(userDetail[key]));
    }
  } catch (e) {
    // The GET request failed. Handle the error.
    print(e);
    print('Couldn\'t open $url');
    print('Request failed.');
  }
}
