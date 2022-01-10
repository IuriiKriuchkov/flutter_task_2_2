import 'package:flutter/material.dart';
import 'package:flutter_task_2_2/resources/colors.dart';
import 'package:intl/intl.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

enum Sauce { hot, sweet, cheese }

class _HomeScreenState extends State<HomeScreen> {
  bool _isSlimDought = false;
  double _pizzaSize = 30;
  int _cost = 200;
  Sauce? _sauce = Sauce.hot;
  bool _addCheese = true;

  int _calcCost() {
    _cost = _pizzaSize.round() + 100;
    if (_isSlimDought == true) _cost += 20;
    if (_addCheese == true) _cost += 50;

    switch (_sauce) {
      case Sauce.hot:
        _cost += 10;
        break;
      case Sauce.sweet:
        _cost += 20;
        break;
      case Sauce.cheese:
        _cost += 40;
        break;
      case null:
        _sauce = Sauce.hot;
        break;
    }
    return _cost;
  }

  void _onSauceChanged(Sauce? value) {
    setState(() {
      _sauce = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset('assets/images/pizza.png'),
                ),
                const SizedBox(height: 33.0),
                const Text(
                  'Калькулятор пиццы',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 6.0),
                const Text(
                  'Выберите параметры:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 33.0),
                SlidingSwitch(
                  value: false,
                  width: 300,
                  onChanged: (bool value) {
                    _isSlimDought = value;
                    setState(() {
                      _calcCost();
                    });
                  },
                  height: 44,
                  animationDuration: const Duration(milliseconds: 400),
                  onTap: () {},
                  onDoubleTap: () {},
                  onSwipe: () {},
                  textOff: 'Обычное тесто',
                  textOn: 'Тонкое тесто',
                  colorOn: const Color(0xffFFFFFF),
                  colorOff: const Color(0xf0FFFFFF),
                  background: const Color(0xffECEFF1),
                  buttonColor: const Color(0xff0079D0),
                  inactiveColor: const Color(0xff636f7b),
                ),
                const SizedBox(height: 19.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Размер:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SfSlider(
                  tooltipShape: SfPaddleTooltipShape(),
                  value: _pizzaSize,
                  onChanged: (dynamic value) {
                    setState(() {
                      _pizzaSize = value;
                      _calcCost();
                    });
                  },
                  min: 20,
                  max: 35,
                  interval: 5,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: false,
                  minorTicksPerInterval: 0,
                  stepSize: 5,
                  numberFormat: NumberFormat('## см'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Coyc:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                RadioListTile<Sauce>(
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: const Text('Острый'),
                  activeColor: greenColor,
                  value: Sauce.hot,
                  groupValue: _sauce,
                  onChanged: _onSauceChanged,
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -4.0),
                ),
                RadioListTile<Sauce>(
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: const Text('Сладкий'),
                  activeColor: greenColor,
                  value: Sauce.sweet,
                  groupValue: _sauce,
                  onChanged: _onSauceChanged,
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -4.0),
                ),
                RadioListTile<Sauce>(
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: const Text('Сырный'),
                  activeColor: greenColor,
                  value: Sauce.cheese,
                  groupValue: _sauce,
                  onChanged: _onSauceChanged,
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -4.0),
                ),
                SizedBox(
                  width: 300,
                  child: Card(
                    elevation: 0,
                    color: greyLiteColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 20,
                          ),
                          child: SizedBox(
                            width: 30,
                            height: 56,
                            child: Image.asset('assets/images/cheese.png'),
                          ),
                        ),
                        const Text(
                          'Дополнительный сыр',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: blackColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        Switch(
                            value: _addCheese,
                            onChanged: (bool value) {
                              setState(() {
                                _addCheese = value;
                                _calcCost();
                              });
                            })
                      ],
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Стоимость:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Card(
                    elevation: 0,
                    color: greyLiteColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      '${_calcCost()} руб.',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Заказать',
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
      ),
    );
  }
}
