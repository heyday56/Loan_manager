import 'package:flutter/material.dart';

class Loan extends StatefulWidget {
  const Loan({super.key});

  @override
  State<Loan> createState() => _LoanState();
}

class _LoanState extends State<Loan> {
  final item = {
    'name': "ali",
    'amount': "2000",
    'date': "2004/01/11"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Loan',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return _card(item);
            },
          ),
        ),
      ),
    );
  }

  Widget _card(Map<String, dynamic> item) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // Name takes most space
            Expanded(
              flex: 3,
              child: Text(
                item['name'] ?? '',
                overflow: TextOverflow.ellipsis,
              ),
            ),

            // Amount text
            Expanded(
              flex: 2,
              child: Text(
                item['amount'] ?? '',
                textAlign: TextAlign.center,
              ),
            ),

            // Date text
            Expanded(
              flex: 3,
              child: Text(
                item['date'] ?? '',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            // Button
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.payment, color: Colors.white),
              label: const Text('پرداخت'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
