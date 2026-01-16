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
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return  CupertinoPageScaffold( // Scaffold widget
      // TopBar of the Page    
      navigationBar: CupertinoNavigationBar(
        middle: const Text('ConvertAll Currency Convertor'),
      ),

      // Body of the Page 
      child: Container(
        alignment: Alignment.center,
        // color: Color.fromARGB(255, 27, 229, 244),
        padding: const EdgeInsets.all(20),

        // Main Body of the Page
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Result Display
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Text(
                'INR ${result!= 0? result.toStringAsFixed(3):result.toStringAsFixed(0)}',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),

            // Input Text Feild
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
            // Convert Button 
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