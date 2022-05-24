import 'package:flutter/material.dart';
import 'package:flutter_random_password/controllers/password_controller.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PasswordController passwordController = Get.put(PasswordController());
    TextEditingController passController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: passController,
                decoration: InputDecoration(
                  hintText: 'Enter Pass Length',
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                passwordController.generatePassword(
                  passController.text,
                );
              },
              child: const Text('Generate Password'),
            ),
          ],
        ),
      ),
    );
  }
}
