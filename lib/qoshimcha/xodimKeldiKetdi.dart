import 'package:Tatwir_price/qoshimcha/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class xodimKeldiKetdi extends StatefulWidget {
  const xodimKeldiKetdi({super.key});

  @override
  State<xodimKeldiKetdi> createState() => _kilentgaSotishValyutasiState();
}

class _kilentgaSotishValyutasiState extends State<xodimKeldiKetdi> {


  bool _isCheckedsomKilent = true;
  bool _isCheckeddollorKilent = false;
  bool _isCheckedaralashKilent= false;

  void priceChanged({isCheckedSomClient = true, isCheckedDollarClient = false, isCheckedAralashClient = false}){

    NarxNazorati narxNazorati = Get.find();

    _isCheckedaralashKilent = isCheckedAralashClient;
    _isCheckeddollorKilent = isCheckedDollarClient;
    _isCheckedsomKilent = isCheckedSomClient;

    narxNazorati.xodimKeldiKetdi.value = _isCheckedsomKilent ? 300 : _isCheckeddollorKilent ? 500 : _isCheckedaralashKilent ? 700 : 0;
    narxNazorati.update();

  }




  @override
  Widget build(BuildContext context) {
    return GetBuilder<NarxNazorati>(builder: (narxNazorati){

      return Padding(
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
              //Kilentga sotish valyutasi ?
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 5,),
                  Text("Xodim keldi ketdi",style: TextStyle(fontSize: 19,color: Colors.black,fontFamily: "MarkoOne"),),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        priceChanged(isCheckedAralashClient: false, isCheckedDollarClient: false, isCheckedSomClient: !_isCheckedsomKilent);
                      },
                      child: Transform.scale(
                        scale: 0.80,
                        child: Checkbox(
                          activeColor: Colors.deepPurple, // Faol holatdagi Checkbox rangi
                          value: _isCheckedsomKilent,
                          onChanged: (bool? value) {
                            priceChanged(isCheckedSomClient: value!, isCheckedDollarClient: false, isCheckedAralashClient: false);
                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Oddiy",
                      style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "MarkoOne"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {

                        priceChanged(isCheckedAralashClient: false, isCheckedSomClient: false, isCheckedDollarClient: !_isCheckeddollorKilent);

                      },
                      child: Transform.scale(
                        scale: 0.80,
                        child: Checkbox(
                          activeColor: Colors.deepPurple, // Faol holatdagi Checkbox rangi
                          value: _isCheckeddollorKilent,
                          onChanged: (bool? value) {

                            priceChanged(isCheckedDollarClient: value!, isCheckedSomClient: false, isCheckedAralashClient: false);

                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Vaqtli oddiy",
                      style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "MarkoOne"),
                    ),
                  ),
                  SizedBox(width: 10),


                  Expanded(
                    child: GestureDetector(
                      onTap: () {

                        priceChanged(isCheckedAralashClient: !_isCheckedaralashKilent, isCheckedSomClient: false, isCheckedDollarClient: false);
                      },
                      child: Transform.scale(
                        scale: 0.80,
                        child: Checkbox(
                          activeColor: Colors.deepPurple, // Faol holatdagi Checkbox rangi
                          value: _isCheckedaralashKilent,
                          onChanged: (bool? value) {


                            priceChanged(isCheckedDollarClient: false, isCheckedSomClient: false, isCheckedAralashClient: value! );


                          },
                        ),
                      ),
                    ),
                  ),


                  Expanded(
                    flex: 2,
                    child: Text(
                      "Vaqtli Face id",
                      style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "MarkoOne"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              SizedBox(width: 10),
              Row(
                children: [
                  SizedBox(width: 15,),
                  Text(
                    "Narx: ${narxNazorati.xodimKeldiKetdi.value}\$",
                    style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "MarkoOne"),
                  ),
                ],
              ),
              SizedBox(height: 20,),
            ],


          ),
        ),
      );


    });
  }
}
