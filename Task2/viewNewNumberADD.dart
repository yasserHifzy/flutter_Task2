

import 'package:flutter/cupertino.dart';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'AddNewNum.dart';
class showNumbers extends StatefulWidget {
  const showNumbers({Key? key}) : super(key: key);

  @override
  State<showNumbers> createState() => _showNumbersState();
}

class _showNumbersState extends State<showNumbers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          onPressed: (){
            Navigator.pop(context,MaterialPageRoute(builder: (context){
              return ph();
            }));
          },
          icon: Icon(Icons.keyboard_arrow_left),
        ) ,
      ),

        body: Padding(
          padding: EdgeInsetsDirectional.all(40),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text("Contacte",
                         style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold
                         ),
                       ),
                       SizedBox(width: 100,),

                       IconButton(onPressed: (){}, icon: Icon(Icons.view_column)),
                       IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit)),
                     ],
                   ),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => ScroalNumber(),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 5,
                        ),
                        itemCount: 20),
                  ]),
            ),
          ),
        ));
  }

  Widget ScroalNumber(){
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("images/yasser.jpg"),
          ),
          SizedBox(width: 10,),
          Column(
            children: [
              Text("yasser Hifzy Alwan "),
              Text("+108321123221"),
            ],
          ),
        Padding(
          padding: EdgeInsetsDirectional.only(
            start: 50,
          ),
          child: IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
        )
        ],
      ),
    );
  }


}
