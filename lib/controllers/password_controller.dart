import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PasswordController extends GetxController {
  Future<void> generatePassword(length) async {
    final response = await http.post(
      Uri.parse('http://10.0.2.2:8585/randomPassword/$length'),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.body);
    }
  }
}
