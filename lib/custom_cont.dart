import 'package:flutter/material.dart';

class CustomCont extends StatelessWidget {
  const CustomCont({
    super.key,
    required this.status,

    required this.amount,
    required this.color,
    required this.quarterTurns,
  });
  final String status;

  final String amount;
  final Color color;
  final int quarterTurns;
 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 130,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),

      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: color,
              child: RotatedBox(quarterTurns: quarterTurns, child: Icon(Icons.arrow_back),),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text("EGP", style: TextStyle(fontSize: 14)),
                SizedBox(width: 4),
                Text(
                  amount,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(status, style: TextStyle(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
