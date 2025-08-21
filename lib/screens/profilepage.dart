import 'package:flutter/material.dart';
import 'package:hrastore_rahman/screens/login.dart';

class profilpage extends StatelessWidget {
  const profilpage({super.key});

  Widget _gap() => const SizedBox(
        height: 16,
        width: 16,
      );

  static const List<String> tanya = ['Nama', 'Username', 'No HP', 'Address'];
  static const List<String> jawab = [
    'Rahman Nur Padilah',
    'rahman',
    '085759596441',
    'Salawu'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )),
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('asset/profil.jpg'),
                    ),
                    _gap(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rahman Nur Padilah",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Petugas",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _gap(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                  itemCount: tanya.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: MediaQuery.of(context).size.height * 1,
                              child: Row(
                                children: [Text(tanya[index])],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.05,
                              height: MediaQuery.of(context).size.height * 1,
                              child: const Row(
                                children: [Text(':')],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: MediaQuery.of(context).size.height * 1,
                              child: Row(
                                children: [
                                  Text(jawab[index]),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // decoration: BoxDecoration(
                        //   border: Border.symmetric(horizontal: BorderSide()),
                        // ),
                      ),
                    );
                  }),
            ),
            _gap(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: const BorderSide(color: Colors.black, width: 1),
                        )),
                    child: const Text(
                      'Edit Profil',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ),
            _gap(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) => const LoginPage()
                        ), (Route) => false
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: const BorderSide(color: Colors.black, width: 1),
                        )),
                    child: const Text(
                      'Logout',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
