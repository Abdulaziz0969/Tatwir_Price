import 'package:Tatwir_price/qoshimcha/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void showDilog(context) {

  NarxNazorati narxNazorati = Get.find();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Color(0xFF003B80),
        title: const Text("Jami summa: ", style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: "MarkoOne"),),
        content: SizedBox(
          width: 250,
          height: 250,
          child: Column(
            children: [
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "\$${(narxNazorati.klientgaSavdoValyutasi.value + narxNazorati.pastavshik.value + narxNazorati.savdoNarxTuri.value + narxNazorati.xodimKeldiKetdi.value + narxNazorati.aralashSavdo.value + narxNazorati.bot.value + narxNazorati.ishlabChiqarish.value).toString()}",
                    style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: "MarkoOne"),
                  ),

                  SizedBox(width: 60,)
                ],
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Text(
                  "Itog narx chiqganda chiqgan narxga qarab yoki qoshib yoki ayirib klientni tushib bering deyishini ham inobatga olib narx aytiladi ",
                  style: TextStyle(fontSize: 18, color: Colors.white, fontFamily: "MarkoOne"),
                ),
              ),
            ],
          ),
        ),
        actions: [
          // TextButton(
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //   },
          //   style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all(Colors.blue), // Set the background color
          //   ),
          //   child: const Text("Yopish", style: TextStyle(color: Colors.white)), // Set the text color
          // ),

        ],
      );
    },
  );
}