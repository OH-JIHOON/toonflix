import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String asset;
  final String amount;
  final String symbol;
  final IconData icon;
  final Color icoColor;
  final Color bgColor;
  final Color textColor;

  const CurrencyCard({
    super.key,
    required this.asset,
    required this.amount,
    required this.symbol,
    required this.icon,
    required this.icoColor,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  asset,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: textColor,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      symbol,
                      style: TextStyle(
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2,
              child: Transform.translate(
                offset: const Offset(-8, 16),
                child: Icon(
                  icon,
                  color: icoColor,
                  size: 96,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
