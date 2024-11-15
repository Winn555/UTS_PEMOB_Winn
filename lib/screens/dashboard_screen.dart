import 'package:flutter/material.dart';
import 'order_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard E-Distribusi'),
        // Tidak ada lagi tombol logout
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat Datang, Agen!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderScreen()), // Navigasi ke OrderScreen
                );
              },
              child: Text('Lihat Order'),
            ),
          ],
        ),
      ),
    );
  }
}
