import 'package:flutter/material.dart';

class ConvertAllCurrencyConvertorPage extends StatefulWidget {
  const ConvertAllCurrencyConvertorPage({super.key});
  @override
  State<ConvertAllCurrencyConvertorPage> createState() =>
      _ConvertAllCurrencyConvertorPageState();
}

class _ConvertAllCurrencyConvertorPageState
    extends State<ConvertAllCurrencyConvertorPage> {
  double result = 0;

  final TextEditingController amountController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.all(Radius.circular(9.0)),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('ConvertAll Currency Convertor'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        // color: Color.fromARGB(255, 27, 229, 244),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Text(
                'INR ${result.toString()}',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: amountController,
              decoration: InputDecoration(
                focusedBorder: border,
                enabledBorder: border,
                hintText: 'Enter amount in USD',
                hintStyle: const TextStyle(),
                prefixIcon: const Icon(Icons.monetization_on_outlined),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(amountController.text) * 90;
                  });
                  // Conversion logic to be implemented
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.0),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ConvertAllCurrencyConvertorPagee extends StatelessWidget {
  const ConvertAllCurrencyConvertorPagee({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController amountController = TextEditingController();
    double result = 0;

    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.all(Radius.circular(9.0)),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('ConvertAll Currency Convertor'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        // color: Color.fromARGB(255, 27, 229, 244),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Text(
                result.toString(),
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: amountController,
              decoration: InputDecoration(
                focusedBorder: border,
                enabledBorder: border,
                hintText: 'Enter amount in USD',
                hintStyle: const TextStyle(),
                prefixIcon: const Icon(Icons.monetization_on_outlined),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  result = double.parse(amountController.text) * 90;
                  // Conversion logic to be implemented
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.0),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
