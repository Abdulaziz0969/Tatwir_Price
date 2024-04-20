import 'package:Tatwir_price/qoshimcha/controller.dart';
import 'package:Tatwir_price/widgets/summary_dialog.dart';
import 'package:flutter/material.dart';
import 'package:Tatwir_price/qoshimcha/Pastavshik.dart';
import 'package:Tatwir_price/qoshimcha/aralashSavdo.dart';
import 'package:Tatwir_price/qoshimcha/bot.dart';
import 'package:Tatwir_price/qoshimcha/ishlabChiqarish.dart';
import 'package:Tatwir_price/qoshimcha/jami%20narxlar.dart';
import 'package:Tatwir_price/qoshimcha/kilentgaSotishValyutasi.dart';
import 'package:Tatwir_price/qoshimcha/savdoNarxTuri.dart';
import 'package:Tatwir_price/qoshimcha/xodimKeldiKetdi.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tatwir price',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NarxNazorati>(
      init: NarxNazorati(),
      builder: (narxNazorati) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent, // Set background color to transparent
            body: Container(
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/kk.jpg"), // Replace "background_image.png" with your image asset path
        fit: BoxFit.cover, // Adjust the fit as needed
        ),
        ),
          child:   CustomScrollView(

              slivers: [

                SliverAppBar.large(
                  backgroundColor: Color(0xFF003B80),
                  title: Center(
                    child: Text(
                      "Tatwir price",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  pinned: true, // Ensures that the app bar remains visible while scrolling
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20), // Adjust the radius as needed
                    ),
                  ),
                ),




                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      // Center(child: Text(narxNazorati.umumiyNarx.value.toString()),),
                      SizedBox(height: 10),
                      Pastavshik(),
                      kilentgaSotishValyutasi(),
                      SavdoNarxTuri(),
                      xodimKeldiKetdi(),
                      AralashSavdo(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10,left: 10,top: 20),
                        child: Container(
                          decoration: BoxDecoration(

                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFF00d2ff), // Color stop at 0% with #00d2ff
                                  Color(0xFF3a47d5), // Color stop at 100% with #3a47d5
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      "Kpi Vaziyatga qarab kpi holatiga qarab gaplashishda keginchalik yangi KPI sora KPIni qiyinlik darajasiga qarab narx etilishi mumkun deb aytiladi",
                                      style: TextStyle(fontSize: 18, color: Colors.black, fontFamily: "MarkoOne"),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(right: 10,left: 10,top: 15),

                        child: Container(
                          decoration: BoxDecoration(

                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFF00d2ff), // Color stop at 0% with #00d2ff
                                  Color(0xFF3a47d5), // Color stop at 100% with #3a47d5
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Row(

                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      "Klient skidka vaziyatga qarab skidka holatiga qarab gaplashishda keginchalik yangi skidka sora skidkani qiyinlik darajasiga qarab narx etilishi mumkun deb aytiladi",
                                      style: TextStyle(fontSize: 18, color: Colors.black, fontFamily: "MarkoOne"),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ishlabChiqarish(),
                      bot(),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFF00d2ff), // Color stop at 0% with #00d2ff
                                Color(0xFF3a47d5), // Color stop at 100% with #3a47d5
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              showDilog(context);
                            },
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(const Size(150, 40)),
                              backgroundColor: MaterialStateProperty.all(Colors.transparent), // Set button color to transparent
                              elevation: MaterialStateProperty.all(0), // Set elevation to 0
                            ),
                            child: const Text(
                              "Itog",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: "MarkoOne",
                              ),
                            ),
                          ),
                        ),
                      ),


                      SizedBox(height: 20),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
      },
    );
  }
}
