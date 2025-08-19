import 'package:flutter/material.dart';

void main() => runApp(const WalletApp());

class WalletApp extends StatelessWidget {
  const WalletApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WalletScreen(),
    );
  }
}

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ---- Top: Balance label ----
              Row(
                children: [
                  Text(
                    'Total Balance',
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 14),
                  ),
                  const SizedBox(width: 6),
                  Icon(
                    Icons.info_outline,
                    size: 16,
                    color: Colors.grey.shade500,
                  ),
                ],
              ),
              const SizedBox(height: 6),

              // ---- Balance amount & currency ----
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    '0.00',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'EGP',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 6),
                  const Icon(
                    Icons.arrow_drop_down,
                    size: 22,
                    color: Colors.black87,
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // ---- Summary cards (2 columns) ----
              Row(
                children: const [
                  Expanded(
                    child: SummaryCard(
                      color: Color(0xFFE8F7EE), // light green
                      iconBg: Color(0xFFDFF5E7),
                      iconColor: Color(0xFF32A071),
                      iconData: Icons.south_west, // arrow down-left
                      amount: 'EGP 20,000.00',
                      label: 'Withdrawal',
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: SummaryCard(
                      color: Color(0xFFFFF2E7), // light orange
                      iconBg: Color(0xFFFFE9D8),
                      iconColor: Color(0xFFFF8A3D),
                      iconData: Icons.north_east, // arrow up-right
                      amount: 'EGP 1,500.00',
                      label: 'Deposit',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 28),

              // ---- History header ----
              const Text(
                'History Transaction',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
              ),

              // (Optional) Empty space where a ListView of transactions would go.
              const SizedBox(height: 400),
            ],
          ),
        ),
      ),
    );
  }
}

class SummaryCard extends StatelessWidget {
  final Color color;
  final Color iconBg;
  final Color iconColor;
  final IconData iconData;
  final String amount;
  final String label;

  const SummaryCard({
    super.key,
    required this.color,
    required this.iconBg,
    required this.iconColor,
    required this.iconData,
    required this.amount,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.black12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Left: circular icon
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(color: iconBg, shape: BoxShape.circle),
            child: Icon(iconData, color: iconColor),
          ),
          const SizedBox(width: 12),

          // Right: amount + label
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  amount,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
