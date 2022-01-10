import 'package:flutter/material.dart';
import 'package:flutter_task_2_2/custom_widgets/widgets.dart';
import 'package:flutter_task_2_2/resources/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
              top: 81.0, left: 38.0, right: 38.0, bottom: 84.0),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
                child: Image(
                  image: AssetImage('assets/images/dart_logo.png'),
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Введите логин в виде 10 цифр номера телефона",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 10.0),
              const SizedBox(
                width: double.infinity,
                child: UserScreenTextField(label: '+7'),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                child: UserScreenTextField(
                  label: '******',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 154,
                height: 42,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Войти',
                    style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: blueColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const SizedBox(
                height: 32,
                child: UserScreenInkWell(label: 'Регистрация'),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 32,
                child: UserScreenInkWell(label: 'Забыли пароль?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
