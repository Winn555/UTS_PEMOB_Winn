import 'package:flutter/material.dart';
import 'order_detail_screen.dart'; // Import OrderDetailScreen

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Order'),
        // Tidak ada lagi tombol logout
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue[50],  // Warna latar belakang sederhana (light blue)
        ),
        child: ListView.builder(
          itemCount: 4, // Tampilkan hanya 4 order
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.delivery_dining),
              title: Text('Order #$index'),
              subtitle: Text('Status: Pending'),
              onTap: () {
                // Aksi ketika mengklik order, navigasi ke halaman detail
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetailScreen(orderId: index), // Mengirim data Order ID
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
