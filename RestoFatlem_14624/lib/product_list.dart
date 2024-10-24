import 'package:flutter/material.dart';
import 'package:restofatlem_14624/product.dart';
import 'package:restofatlem_14624/product_description.dart';

class ProductList extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Mie Ayam Nigga', description: '"Mie Ayam Nigga" adalah nama kuliner yang mengacu pada hidangan mie ayam, yang merupakan salah satu makanan favorit di Indonesia. Mie ayam terdiri dari mie yang dimasak al dente, disajikan dengan potongan daging ayam, sayuran, dan kuah kaldu yang lezat. Penggunaan kata "Nigga" di sini sering kali dimaksudkan untuk menambahkan elemen humor atau gaya yang lebih santai dalam menyebut makanan ini, meskipun penting untuk diperhatikan bahwa istilah ini bisa dianggap sensitif atau kontroversial dalam beberapa konteks. Makanan ini populer di kalangan anak muda dan sering dijajakan di warung-warung atau kedai makanan.', price: 10000),
    Product(name: 'Esteh Rizz', description: '"Esteh Rizz" adalah istilah gaul yang sering digunakan di kalangan anak muda di Indonesia. "Esteh" merujuk pada es teh, minuman populer di Indonesia, sementara "Rizz" berasal dari bahasa slang yang berarti daya tarik atau kemampuan menarik perhatian, khususnya dalam konteks hubungan sosial atau percintaan. Kombinasi kata ini sering digunakan untuk menggambarkan seseorang yang memiliki pesona atau gaya yang menarik, seolah-olah mereka "dingin" dan menawan seperti es teh.', price: 20000),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ListTile(
          title: Text(product.name),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDescription(product: product),
              ),
            );
          },
          leading: GestureDetector(
            onTap: () {
              // Logika penjualan
            },
            child: Image.network('https://via.placeholder.com/150'), // Placeholder image
          ),
        );
      },
    );
  }
}
