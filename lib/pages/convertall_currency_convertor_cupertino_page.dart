import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConvertallCurrencyConvertorCupertinoPage extends StatefulWidget {
  const ConvertallCurrencyConvertorCupertinoPage({super.key});

  @override
  State<ConvertallCurrencyConvertorCupertinoPage> createState() => _ConvertallCurrencyConvertorCupertinoPageState();
}

class _ConvertallCurrencyConvertorCupertinoPageState extends State<ConvertallCurrencyConvertorCupertinoPage> {

  double result = 0;

  final TextEditingController amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {


    return  CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('ConvertAll Currency Convertor'),
      ),
      child: Container(
        alignment: Alignment.center,
        // color: Color.fromARGB(255, 27, 229, 244),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Text(
                'INR ${result!= 0? result.toStringAsFixed(3):result.toStringAsFixed(0)}',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            CupertinoTextField(
              keyboardType: TextInputType.number,
              controller: amountController,
              decoration: BoxDecoration(
                border:Border.all(),
                borderRadius: BorderRadius.circular(9.0),
              ),
              placeholder: 'Enter amount in USD',
              prefix: Icon(CupertinoIcons.money_dollar_circle),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: CupertinoButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(amountController.text) * 90;
                  });
                  // Conversion logic to be implemented
                },
                color: const Color.fromARGB(255, 85, 148, 219),
                minimumSize: const Size(double.infinity, 50),
                borderRadius: BorderRadius.circular(9.0),
                child: const Text(
                  'Convert',
                  style: TextStyle(
                    color: CupertinoColors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}