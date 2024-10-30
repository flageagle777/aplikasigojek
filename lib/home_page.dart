import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> services = [
    {'name': 'GoRide', 'icon': Icons.motorcycle},
    {'name': 'GoCar', 'icon': Icons.directions_car},
    {'name': 'GoFood', 'icon': Icons.fastfood},
    {'name': 'GoSend', 'icon': Icons.local_shipping},
    {'name': 'GoMart', 'icon': Icons.store},
    {'name': 'GoPulsa', 'icon': Icons.phone_iphone},
    {'name': 'Check in', 'icon': Icons.location_on},
    {'name': 'Lainnya', 'icon': Icons.more_horiz},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top search bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              color: Colors.green,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari layanan, makanan, & tujuan',
                        hintStyle: TextStyle(color: Colors.grey[300]),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/profile_picture.png'), // replace with your asset
                  ),
                ],
              ),
            ),

            // Gopay balance section
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_balance_wallet, color: Colors.blue),
                          SizedBox(width: 8),
                          Text('Rp2.000', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Klik & cek riwayat', style: TextStyle(color: Colors.blue)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildQuickAction(icon: Icons.arrow_upward, label: 'Bayar'),
                      _buildQuickAction(icon: Icons.add, label: 'Isi Saldo'),
                      _buildQuickAction(icon: Icons.explore, label: 'Eksplor'),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            // Services grid
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: services.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.green[100],
                        child: Icon(
                          services[index]['icon'],
                          color: Colors.green,
                          size: 30,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        services[index]['name'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  );
                },
              ),
            ),

            SizedBox(height: 10),

            // XP progress section
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('187 XP lagi ada Harta Karun', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  LinearProgressIndicator(
                    value: 0.7, // Adjust this based on your progress
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                  SizedBox(height: 5),
                  Text('Harta Karun bentar lagi hilang'),
                ],
              ),
            ),

            SizedBox(height: 10),

            // Quick access section
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Akses cepat', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildQuickAccessItem('Bakso Amanah Pak Ghendut', Icons.restaurant),
                      _buildQuickAccessItem('2 vouchers akan hangus', Icons.local_offer),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAction({required IconData icon, required String label}) {
    return Column(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.blue[100],
          child: Icon(icon, color: Colors.blue),
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildQuickAccessItem(String title, IconData icon) {
    return Column(
      children: [
        Icon(icon, color: Colors.green),
        SizedBox(height: 5),
        Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
