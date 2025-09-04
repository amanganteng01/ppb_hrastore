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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: const BoxDecoration(),
              child: const Center(
                child: Text("Profile",
                style: TextStyle(
                  fontSize: 24
                ),),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: const BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.25,
                 child: const Padding(
                  padding: EdgeInsets.only(left: 24),
                    child: CircleAvatar(),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Rahman Nurpadilah",
                          style: TextStyle(
                          fontSize: 24
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text("Rahman029@gmail.com",
                          style: TextStyle(
                          fontSize: 20
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.15,
                 child: const Padding(
                  padding: EdgeInsets.only(right: 24),
                    child: CircleAvatar(),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text("Account",
              style: TextStyle(
                fontSize: 20
              ),
            ),
          )
          ],
        ),
      ),
    );
  }
}
