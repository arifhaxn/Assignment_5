import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  const Converter({super.key});

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  TextEditingController controller = TextEditingController();
  String? errortxt;
  double result = 0;

  void convert() {
    setState(() {
      String text = controller.text;
      if (text.isEmpty) {
        errortxt = 'Incorrect Input';
      } else {
        result = double.parse(text) * 2.54;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 450,
        width: 350,
        child: Card(
          color: const Color.fromARGB(255, 175, 230, 255),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('INCH '), Icon(Icons.arrow_right), Text(' CM')],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: TextField(
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  controller: controller,
                  decoration: InputDecoration(
                    labelText: 'Enter your value',
                    hintText: 'In Inch',
                    suffixIcon: const Icon(Icons.scale),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 15, 103, 203)),
                        borderRadius: BorderRadius.circular(50)),
                    errorText: errortxt,
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: convert,
                style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 30, 53, 124)),
                child: const Text(
                  'Press',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text('CM Value : $result'),
            ],
          ),
        ),
      ),
    );
  }
}
