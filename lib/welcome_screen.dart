import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF8B261E),
              Color(0xFF4A120E),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.theater_comedy,
                  size: 64,
                  color: Color(0xFFD4AF37),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "أهلاً بك في خشبة المسرح",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF3E5AB),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Welcome to the Theater Stage",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 40),
              Divider(color: Color(0xFFD4AF37).withOpacity(0.5), thickness: 1),
              SizedBox(height: 30),
              Text(
                "إبراهيم سامي حسن",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Ibrahim Sami Hassan",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white60,
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD4AF37), width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "𒀀𒁀𒊏𒄭ⵎ (Ibrahim)",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Color(0xFFF3E5AB),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
