import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class SavdoNarxTuri extends StatefulWidget {
  const SavdoNarxTuri({Key? key}) : super(key: key);

  @override
  State<SavdoNarxTuri> createState() => _SavdoNarxTuriState();
}

class _SavdoNarxTuriState extends State<SavdoNarxTuri> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NarxNazorati>(builder: (narxNazorati) {
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
              SizedBox(height: 10,),
              // Savdo narx turi
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 5),
                  Text(
                    "Savdo narx turi",
                    style: TextStyle(fontSize: 19, color: Colors.black, fontFamily: "MarkoOne"),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(width: 12),
                        Text(
                          "1ta",
                          style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "MarkoOne"),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              narxNazorati.savdoNarxTuri.value = 200;
                            });
                          },
                          child: Transform.scale(
                            scale: 0.80,
                            child: Checkbox(
                              activeColor: Colors.deepPurple,
                              value: narxNazorati.savdoNarxTuri.value == 200,
                              onChanged: (value) {
                                setState(() {
                                  narxNazorati.savdoNarxTuri.value = value! ? 200 : 0;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          "2ta",
                          style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "MarkoOne"),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              narxNazorati.savdoNarxTuri.value = 400;
                            });
                          },
                          child: Transform.scale(
                            scale: 0.80,
                            child: Checkbox(
                              activeColor: Colors.deepPurple,
                              value: narxNazorati.savdoNarxTuri.value == 400,
                              onChanged: (value) {
                                setState(() {
                                  narxNazorati.savdoNarxTuri.value = value! ? 400 : 0;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(width: 12),
                        Text(
                          "3ta",
                          style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "MarkoOne"),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              narxNazorati.savdoNarxTuri.value = 600;
                            });
                          },
                          child: Transform.scale(
                            scale: 0.80,
                            child: Checkbox(
                              activeColor: Colors.deepPurple,
                              value: narxNazorati.savdoNarxTuri.value == 600,
                              onChanged: (value) {
                                setState(() {
                                  narxNazorati.savdoNarxTuri.value = value! ? 600 : 0;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          "4ta",
                          style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "MarkoOne"),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              narxNazorati.savdoNarxTuri.value = 800;
                            });
                          },
                          child: Transform.scale(
                            scale: 0.80,
                            child: Checkbox(
                              activeColor: Colors.deepPurple,
                              value: narxNazorati.savdoNarxTuri.value == 800,
                              onChanged: (value) {
                                setState(() {
                                  narxNazorati.savdoNarxTuri.value = value! ? 800 : 0;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(width: 12),
                        Text(
                          "5ta",
                          style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "MarkoOne"),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              narxNazorati.savdoNarxTuri.value = 1000;
                            });
                          },
                          child: Transform.scale(
                            scale: 0.80,
                            child: Checkbox(
                              activeColor: Colors.deepPurple,
                              value: narxNazorati.savdoNarxTuri.value == 1000,
                              onChanged: (value) {
                                setState(() {
                                  narxNazorati.savdoNarxTuri.value = value! ? 1000 : 0;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          "Cheksiz",
                          style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "MarkoOne"),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              narxNazorati.savdoNarxTuri.value = 1500;
                            });
                          },
                          child: Transform.scale(
                            scale: 0.80,
                            child: Checkbox(
                              activeColor: Colors.deepPurple,
                              value: narxNazorati.savdoNarxTuri.value == 1500,
                              onChanged: (value) {
                                setState(() {
                                  narxNazorati.savdoNarxTuri.value = value! ? 1500 : 0;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text(
                    "Narx: ${narxNazorati.savdoNarxTuri.value}\$",
                    style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "MarkoOne"),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      );
    });
  }
}
