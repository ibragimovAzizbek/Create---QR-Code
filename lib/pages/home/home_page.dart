import 'package:flutter/material.dart';
import 'package:qr_code_app/core/constants/path.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRHomePage extends StatefulWidget {
  const QRHomePage({super.key});

  @override
  State<QRHomePage> createState() => _QRHomePageState();
}

class _QRHomePageState extends State<QRHomePage> {
  String? _qrData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A gift for you'),
        backgroundColor: Colors.pink,
      ),
      body: _viewBody(),
    );
  }

  Padding _viewBody() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Open the gift alone..:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.favorite, color: Colors.white),
              onPressed: () {
                setState(() {
                  _qrData = Url.inherentce.secondUrl;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                padding:
                    const EdgeInsets.symmetric(horizontal: 75, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              label: const Text(
                'Get the Gift',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(height: 30),
            if (_qrData != null)
              Column(
                children: [
                  const Text(
                    'Scan Me:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                  const SizedBox(height: 20),
                  QrImageView(
                    data: _qrData!,
                    size: 200,
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      fixedSize: const Size(double.infinity, 50),
                    ),
                    child: const Text(
                      "😊 Ready to turn the next page?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}
