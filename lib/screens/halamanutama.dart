import 'package:flutter/material.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  Widget _gap() => SizedBox(
        height: 16,
      );

  static const List<String> no = ['1', '2', '3'];
  static const List<String> tanggal = [
    '2025-08-01',
    '2025-08-02',
    '2025-08-03'
  ];
  static const List<String> namapetugas = ['Budi', 'Ani', 'Rahman'];
  static const List<String> period = ['Mingguan', 'Bulanan', 'Mingguan'];
  static const List<String> nominal = ['15.000', '60.000', '15.000'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Halo Rahman",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                _gap(),
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                          style: BorderStyle.solid, color: Colors.blue)),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Iuran Minggu Ini Telah Dibayar",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Rp.15.000",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Detail Pembayaran",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                _gap(),
                Text(
                  "History Pembayaran terbaru",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                _gap(),
                ListView.builder(
                  itemCount: no.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(no[index]),
                            Text(tanggal[index]),
                            Text(namapetugas[index]),
                            Text(period[index]),
                            Text(nominal[index]),
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
