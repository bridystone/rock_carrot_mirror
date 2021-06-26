import 'package:http/http.dart' as http;

class WebHelper {
  /// handle bad answers from http response
  bool isResponseValid(http.Response response) {
    if (response.body.isEmpty) {
      throw Exception('Empty data container' + response.request.toString());
    }
    if (response.statusCode != 200) {
      throw Exception('wrong status code: ${response.statusCode}' +
          response.request.toString());
    }
    return true;
  }
}
