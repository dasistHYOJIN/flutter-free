import 'package:flutter/material.dart';

class AmountCard extends StatelessWidget {
  static const CARD_OVERLAB = -20;

  final String amount;
  final String currency;
  final IconData currencyIcon;
  final bool isInverted;
  final double order;

  const AmountCard({
    super.key,
    required this.amount,
    required this.currency,
    required this.currencyIcon,
    this.isInverted = false,
    required this.order,
  });

  Color getTextColor() {
    return isInverted ? Colors.white : const Color(0xFF202020);
  }

  Color getBackgroundColor() {
    return isInverted ? const Color(0xFF202020) : Colors.white;
  }

  double calculateCardOffset() {
    return order * CARD_OVERLAB;
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, calculateCardOffset()),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: getBackgroundColor(),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.7),
                blurRadius: 5.0,
                offset: const Offset(0, 7),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currency,
                    style: TextStyle(
                      color: getTextColor(),
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: getTextColor(),
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        currency,
                        style: TextStyle(
                          color: getTextColor(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Transform.scale(
                    scale: 2.2,
                    child: Transform.translate(
                      offset: const Offset(-5, 12),
                      child: Icon(
                        currencyIcon,
                        color: getTextColor(),
                        size: 88,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
