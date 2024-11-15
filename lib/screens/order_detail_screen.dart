import 'package:flutter/material.dart';

class OrderDetailScreen extends StatelessWidget {
  final int orderId;

  OrderDetailScreen({required this.orderId});

  @override
  Widget build(BuildContext context) {
    final orderDetails = {
      'product': 'Smartphone XYZ',
      'quantity': 5,
      'customerName': 'John Doe',
      'customerAddress': 'Jl. Raya No. 123, Jakarta',
      'status': 'Pengiriman Dikirim',
      'orderDate': '2024-11-15',
      'totalAmount': 'Rp 15,000,000',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Order #$orderId'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.purple],  // Gradasi dari biru ke ungu
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Judul informasi order
                Text(
                  'Informasi Order',
                  style: TextStyle(
                    fontSize: 22, 
                    fontWeight: FontWeight.bold,
                    color: Colors.white,  // Warna teks putih agar kontras dengan latar belakang
                  ),
                ),
                Divider(color: Colors.white),  // Divider putih untuk pemisah

                // Detail produk
                ListTile(
                  title: Text('Produk', style: TextStyle(color: Colors.white)),
                  subtitle: Text(orderDetails['product'].toString(), style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  title: Text('Jumlah', style: TextStyle(color: Colors.white)),
                  subtitle: Text(orderDetails['quantity'].toString(), style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  title: Text('Harga Total', style: TextStyle(color: Colors.white)),
                  subtitle: Text(orderDetails['totalAmount'].toString(), style: TextStyle(color: Colors.white)),
                ),
                Divider(color: Colors.white),

                // Informasi pelanggan
                Text(
                  'Informasi Pelanggan',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Divider(color: Colors.white),
                ListTile(
                  title: Text('Nama Pelanggan', style: TextStyle(color: Colors.white)),
                  subtitle: Text(orderDetails['customerName'].toString(), style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  title: Text('Alamat Pengiriman', style: TextStyle(color: Colors.white)),
                  subtitle: Text(orderDetails['customerAddress'].toString(), style: TextStyle(color: Colors.white)),
                ),
                Divider(color: Colors.white),

                // Status pengiriman
                Text(
                  'Status Pengiriman',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Divider(color: Colors.white),
                ListTile(
                  title: Text('Status', style: TextStyle(color: Colors.white)),
                  subtitle: Text(orderDetails['status'].toString(), style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  title: Text('Tanggal Order', style: TextStyle(color: Colors.white)),
                  subtitle: Text(orderDetails['orderDate'].toString(), style: TextStyle(color: Colors.white)),
                ),
                Divider(color: Colors.white),

                // Tombol kembali ke daftar order
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Kembali ke layar sebelumnya
                    },
                    child: Text(
                      'Kembali ke Daftar Order',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,  // Button dengan warna biru
                      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),  // Sudut tombol melengkung
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
