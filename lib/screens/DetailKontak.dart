import 'package:flutter/material.dart';
import 'package:crud_apps/main.dart'; // Ganti dengan lokasi file Home yang sebenarnya

class DetailKontak extends StatelessWidget {
  final user;

  const DetailKontak({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(20.0), // Ubah nilai sesuai keinginan
          ),
          elevation: 5, // Sesuaikan elevasi card sesuai keinginan
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  initialValue: user.name ?? '',
                  readOnly: true,
                  decoration: InputDecoration(labelText: 'Name'),
                ),
                TextFormField(
                  initialValue: user.contact ?? '',
                  readOnly: true,
                  decoration: InputDecoration(labelText: 'Contact'),
                ),
                TextFormField(
                  initialValue: user.description ?? '',
                  readOnly: true,
                  decoration: InputDecoration(labelText: 'Description'),
                ),
                TextFormField(
                  initialValue: user.address ?? '',
                  readOnly: true,
                  decoration: InputDecoration(labelText: 'Address'),
                ),
                // Add other user details as needed
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MyHomePage(), // Ganti dengan halaman utama yang sebenarnya
                      ),
                    );
                  },
                  child: Text('Back to Home'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
