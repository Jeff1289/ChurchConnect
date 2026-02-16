import 'package:flutter/material.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';

class PresencePage extends StatefulWidget {
  const PresencePage({super.key});
  @override
  State<PresencePage> createState() => _PresencePageState();
}

class _PresencePageState extends State<PresencePage> {
  bool _scanned = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Présence - Scanner')),
//       body: MobileScanner(
//         allowDuplicates: false,
//         onDetect: (barcode, args) {
//           if (_scanned) return;
//           final String? code = barcode.rawValue;
//           if (code == null) return;
//           _scanned = true;
// // TODO: appeler presence_service pour enregistrer
//           showDialog(
//               context: context,
//               builder: (_) => AlertDialog(
//                     title: const Text('Présence enregistrée'),
//                     content: Text('Code: $code'),
//                     actions: [
//                       TextButton(
//                           onPressed: () {
//                             _scanned = false;
//                             Navigator.of(context).pop();
//                           },
//                           child: const Text('OK'))
//                     ],
//                   ));
//         },
//       ),
    );
  }
}
