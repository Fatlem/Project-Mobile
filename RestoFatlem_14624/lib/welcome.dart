import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Posisikan di tengah
          children: <Widget>[
            Image.asset(
              'assets/images/rusdi.png', // Ubah ini sesuai nama file gambarmu
              width: 300, // Sesuaikan ukuran gambar
              height: 300,
            ),
            SizedBox(height: 20), // Jarak antara gambar dan teks
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login'); // Aksi saat teks diklik
              },
              child: Text(
                'Welcome To RestoMazz Rusdi Hoiiyah',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontFamily: 'DynaPuff', // Menggunakan font DynaPuff
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
