import 'package:Tatwir_price/qoshimcha/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AralashSavdo extends StatefulWidget {
  const AralashSavdo({super.key});

  @override
  State<AralashSavdo> createState() => _kilentgaSotishValyutasiState();
}

class _kilentgaSotishValyutasiState extends State<AralashSavdo> {


  bool _isCheckedsomKilent = true;
  bool _isCheckeddollorKilent = false;
  bool _isCheckedaralashKilent= false;

  void priceChanged({isCheckedSomClient = true, isCheckedDollarClient = false, isCheckedAralashClient = false}){

    NarxNazorati narxNazorati = Get.find();

    _isCheckedaralashKilent = isCheckedAralashClient;
    _isCheckeddollorKilent = isCheckedDollarClient;
    _isCheckedsomKilent = isCheckedSomClient;

    narxNazorati.aralashSavdo.value = _isCheckedsomKilent ? 0 : _isCheckeddollorKilent ? 500 : 0;;
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
          ),
          child: Column(
            children: [
              //Kilentga sotish valyutasi ?
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 8,),
                  Text("Aralash Savdo",style: TextStyle(fontSize: 19,color: Colors.black,fontFamily: "MarkoOne"),),
                ],
              ),

              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
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
                      "Mavjud emas",
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
                        child: Row(
                          children: [
                            Checkbox(
                              activeColor: Colors.deepPurple, // Faol holatdagi Checkbox rangi
                              value: _isCheckeddollorKilent,
                              onChanged: (bool? value) {

                                priceChanged(isCheckedDollarClient: value!, isCheckedSomClient: false, isCheckedAralashClient: false);

                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Mavjud",
                      style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "MarkoOne"),
                    ),
                  ),
                  SizedBox(width: 10),



                ],
              ),
              SizedBox(height: 10,),
              SizedBox(width: 10),
              Row(
                children: [
                  SizedBox(width: 19,),
                  Text(
                    "Narx: ${narxNazorati.aralashSavdo.value}\$",
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
