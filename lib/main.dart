import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController suhu = new TextEditingController();
  //variabel berubah
  
  double inputUser =0;
  double kelvin = 0;
  double reamur =0 ;
  
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu", style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Container(
            child: ListView(
              children: [
                TextFormField(
                  // onChanged: (suhu){
                  //   _updateText(suhu);
                  // },
                  controller: suhu,
                  keyboardType: TextInputType.number, //khusus angka
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Masukkan Suhu dalam Celcius',
                  ),
                ),
                // suhu kelvin
                Container(
                  margin: EdgeInsets.only(top: 230),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        padding: EdgeInsets.only(top: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                            )),
                        child: Column(
                          children: [
                            Text(
                              "Suhu Kelvin",
                              style: TextStyle(fontSize: 20),
                            ),
                            Container(
                              
                                margin: EdgeInsets.only(top: 20),
                                child: Text(
                                  "$kelvin",
                                  style: TextStyle(fontSize: 40),
                                )),
                          ],
                        ),
                      ),
                      // suhu reamur
                      Container(
                        width: 150,
                        height: 150,
                        padding: EdgeInsets.only(top: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                            )),
                        child: Column(
                          children: [
                            Text(
                              "Suhu Reamur",
                              style: TextStyle(fontSize: 20),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text(
                                  "$reamur",
                                  style: TextStyle(fontSize: 40),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 270),
                  width: 1000,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 0, 110, 253), // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      setState(() {
                        inputUser = double.parse(suhu.text);
                        kelvin = inputUser+273.15;
                        reamur = 4/5*inputUser;
                      });
                    },
                    child:
                        Text('Konversi suhu'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
