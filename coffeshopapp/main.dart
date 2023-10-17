import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Ordering App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        primaryColor: Color(0xFFC68017), // Warna tema utama
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomeScreen(),
    OrderScreen(),
    VoucherScreen(),
    AccountScreen(),
  ]; //row bottomnavbar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Orders'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Tambahkan logika untuk menangani notifikasi di sini
            },
          ),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFFC68017), // Ubah warna ikon menjadi cokelat
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Color(0xFFC68017), // Ubah warna ikon menjadi cokelat
            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
              color: Color(0xFFC68017), // Ubah warna ikon menjadi cokelat
            ),
            label: 'Voucher',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Color(0xFFC68017), // Ubah warna ikon menjadi cokelat
            ),
            label: 'Account',
          ),
        ],
        backgroundColor: Color(0xFFC68017), // Latar belakang tombol cokelat
        selectedItemColor: Color(0xFFC68017), // Warna ikon terpilih (brown)
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Selamat Datang di Coffee Shop!',
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 20.0),
          Image.asset(
            'assets/coffee_image.jpeg', // Ganti dengan gambar yang sesuai
            width: 500.0,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Tambahkan logika untuk menangani tombol
            },
            child: Text('Lihat Menu'),
          ),
          SizedBox(height: 20.0),
          Text(
            'Daftar Produk Kami',
            style: TextStyle(fontSize: 20.0),
          ),
          ProductList(),
          SizedBox(height: 20.0),
          Text(
            'Promosi Khusus!',
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 20.0),
          Image.asset(
            'assets/promo_image.jpeg', // Ganti dengan gambar promosi
            width: 500.0,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Tambahkan logika untuk menangani tombol promosi
            },
            child: Text('Lihat Promosi'),
          ),
        ],
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            // Tambahkan logika untuk menangani ketika tombol ditekan
          },
          child: ListTile(
            leading: Icon(Icons.local_cafe),
            title: Text('Signature Beans'),
          ),
        ),
        SizedBox(height: 15.0),
        ElevatedButton(
          onPressed: () {
            // Tambahkan logika untuk menangani ketika tombol ditekan
          },
          child: ListTile(
            leading: Icon(Icons.local_cafe),
            title: Text('Hot Coffee'),
          ),
        ),
        SizedBox(height: 15.0),
        ElevatedButton(
          onPressed: () {
            // Tambahkan logika untuk menangani ketika tombol ditekan
          },
          child: ListTile(
            leading: Icon(Icons.local_cafe),
            title: Text('Ice Coffee'),
          ),
        ),
        SizedBox(height: 15.0),
        ElevatedButton(
          onPressed: () {
            // Tambahkan logika untuk menangani ketika tombol ditekan
          },
          child: ListTile(
            leading: Icon(Icons.local_cafe),
            title: Text('Non Coffee'),
          ),
        ),
      ],
    );
  }
}


class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Halaman Order'),
    );
  }
}

class VoucherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Halaman Voucher'),
    );
  }
}

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/user_avatar.png'), // Ganti dengan gambar avatar pengguna
              radius: 50.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Nama Pengguna',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Email: user@example.com', // Ganti dengan email pengguna
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk mengedit profil pengguna
              },
              child: Text('Edit Profil'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk keluar dari akun
              },
              child: Text('Keluar'),
            ),
          ],
        ),
      ),
    );
  }
}