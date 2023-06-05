import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/amount_card.dart';

void main() {
  runApp(App());
}

// root Widget (엔트리 포인트)
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hey, Hyojin',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white, //.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '\$5 194 900',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Button(
                      text: 'Transfer',
                      backgroundColor: Colors.amber,
                      textColor: Colors.black,
                    ),
                    SizedBox(width: 10),
                    Button(
                      text: 'Request',
                      backgroundColor: Color(0xFF202020),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Wallets',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const AmountCard(
                  amount: '6 428',
                  currency: 'Euro',
                  currencyIcon: Icons.euro_rounded,
                  order: 0,
                ),
                const AmountCard(
                  amount: '55 622',
                  currency: 'Dollar',
                  currencyIcon: Icons.currency_bitcoin,
                  isInverted: true,
                  order: 1,
                ),
                const AmountCard(
                  amount: '9 622',
                  currency: 'Bitcoin',
                  currencyIcon: Icons.currency_bitcoin,
                  order: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
