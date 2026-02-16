import 'package:flutter/material.dart';

class DonatePage extends StatelessWidget {
  const DonatePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Faire un Don')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Montant'),
            TextField(keyboardType: TextInputType.number),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
// TODO: appeler payment_service -> backend -> Stripe PaymentIntent
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Paiement (placeholder)')));
              },
              child: const Text('Payer'),
            ),
            const SizedBox(height: 12),
            const Text(
                'Note: Stripe nécessite un backend pour créer PaymentIntent.'),
          ],
        ),
      ),
    );
  }
}
