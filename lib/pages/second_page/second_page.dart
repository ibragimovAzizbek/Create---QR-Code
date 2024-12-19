import 'package:flutter/material.dart';
import 'package:qr_code_app/core/constants/path.dart';
import 'package:qr_flutter/qr_flutter.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.pink,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                """If you have reached this page, then fate is on our side... 💕""",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 25),
              QrImageView(
                data: Url.inherentce.url,
                size: 200,
                backgroundColor: Colors.white,
              ),
              const SizedBox(height: 20),
              const Text(
                'Scan Me:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
