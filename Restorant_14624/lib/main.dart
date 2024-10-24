import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Resto',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RestaurantProfile(),
    );
  }
}

class RestaurantProfile extends StatelessWidget {
  final String email = 'info@sedaprasa.com';
  final String phone = '+123456789';
  final String mapUrl = 'https://maps.google.com';

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.grey[100],
        child: Center(
          child: Card(
            elevation: 4,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Rm. Sedap Rasa',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Image.network(
                    'https://storage.googleapis.com/a1aa/image/2jtRG1hXr4oCLRPQwNJWE2LQVMhlHBgYTCCTeWfR91H6mApTA.jpg',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: Icon(Icons.email),
                        onPressed: () => launch('mailto:$email'),
                      ),
                      IconButton(
                        icon: Icon(Icons.location_on),
                        onPressed: () => launch(mapUrl),
                      ),
                      IconButton(
                        icon: Icon(Icons.phone),
                        onPressed: () => launch('tel:$phone'),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  _buildSectionTitle('Deskripsi:'),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(height: 16),
                  _buildSectionTitle('List Menu:'),
                  _buildMenuList(),
                  SizedBox(height: 16),
                  _buildSectionTitle('Alamat:'),
                  Text(
                    'Jl. Merdeka No. 123, Jakarta, Indonesia',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(height: 16),
                  _buildSectionTitle('Jam Buka:'),
                  _buildOpeningHours(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildMenuList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• Nasi Goreng'),
        Text('• Mie Ayam'),
        Text('• Sate Ayam'),
      ],
    );
  }

  Widget _buildOpeningHours() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• Senin - Jumat: 08:00 - 22:00'),
        Text('• Sabtu - Minggu: 10:00 - 23:00'),
      ],
    );
  }
}