import 'package:flutter/material.dart';

class profilpage extends StatelessWidget {
  const profilpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(32),
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: AssetImage('asset/profil.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rahman Nur Padilah", style: TextStyle(
                                fontSize: 14,
                              ),),
                              SizedBox(height: 4,),
                              Text("Petugas",style: TextStyle(
                                fontSize: 12
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.red
                ),
              ),  
            ],
          ),
        ),
    );
  }
}