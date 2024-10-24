import 'package:flutter/material.dart';
import 'package:ayamku_14624/menu.dart'; // Import model menu

void main() {
  runApp(const AyamKuApp());
}

class AyamKuApp extends StatelessWidget {
  const AyamKuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayam Mazz Ruzdiz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MenuPage(),
    );
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  double totalHarga = 0.0;

  // Fungsi untuk menambahkan harga ke total
  void tambahKeTotal(double harga) {
    setState(() {
      totalHarga += harga;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Ayam Mazz Ruzdiz'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              itemCount: listMenuAyam.length, // Mengambil dari file menu.dart
              itemBuilder: (context, index) {
                final item = listMenuAyam[index];
                return GestureDetector(
                  onTap: () => tambahKeTotal(item.harga),
                  child: Card(
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/${item.gambar}',
                          height: 80,
                        ),
                        const SizedBox(height: 10),
                        Text(item.nama),
                        Text(item.deskripsi),
                        Text('Rp. ${item.harga}'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.blue,
            child: Text(
              'Total: Rp. ${totalHarga.toStringAsFixed(2)}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
