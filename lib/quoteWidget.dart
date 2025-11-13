import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteWidget extends StatelessWidget {
  late final Quote quote;
  QuoteWidget({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text.toString(),
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 18
              ),
            ),
            Divider(height: 6),
            SizedBox(height: 6),
            Text(
              quote.author.toString(),
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 14
              ),
            )
          ],
        ),
      ),
    );
  }
}