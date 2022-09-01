import 'dart:ui';

import 'package:books_store/Modules/ContactesScrean/viewNewNumberADD.dart';
import "package:flutter/material.dart";

import '../../sahrad/combones/LongnBoutton.dart';
import '../../sahrad/combones/TFF.dart';

class ph extends StatefulWidget {
  const ph({Key? key}) : super(key: key);

  @override
  State<ph> createState() => _phState();
}

class _phState extends State<ph> {
  var nmbercontroler=TextEditingController();
  var Namecontroler=TextEditingController();
  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add New Number",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      ) ,



      ),
      body: Form(
         autovalidateMode: AutovalidateMode.onUserInteraction,
        child:
        Column(
         mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            defluteTFF(
                controllers: Namecontroler,
                 type: TextInputType.emailAddress,
                labelText: "Enter Name",
              iconprefixIcon: Icons.abc_sharp



            ),
            SizedBox(height: 10,),
            defluteTFF(
                controllers: nmbercontroler,
                 type: TextInputType.phone,
                labelText: "Enter Number",
                iconprefixIcon: Icons.phone,
            )         ,

            TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                 return showNumbers();
                               }));
            }
                , child: Text("Add".toUpperCase()  ,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),

              ),

            ),
          ],
        ),
      ),
    );
  }
}
