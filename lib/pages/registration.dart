import 'package:flutter/material.dart';
import 'package:flutter_task_2_2/custom_widgets/widgets.dart';
import 'package:flutter_task_2_2/resources/colors.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 54.0, left: 38.0, right: 38.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.people_alt),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Регистрация',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              Column(
                children: const [
                  Text(
                    'Чтобы зарегистрироваться введите свой номер телефона и почту',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: lightGreyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Телефон',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    height: 44,
                    child: UserScreenTextField(
                      label: '+7',
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Почта',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    height: 44,
                    child: UserScreenTextField(
                      label: ' ',
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Вам придет четырехзначный код, который будет вашим паролем',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: lightGreyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Чтобы зарегистрироваться введите свой номер телефона и почту',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: lightGreyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
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
            ],
          ),
        ),
      ),
    );
  }
}
