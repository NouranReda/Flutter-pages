import 'package:flutter/material.dart';
import 'dart:io';
class start extends StatelessWidget {
  const start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfff2B8ECF),
      body: Center(
      child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Padding(
              padding: const EdgeInsets.all(7.0),
          child:
              Text(
                'ANTI MP',
                style: TextStyle(fontSize: 40.5,
                  fontWeight: FontWeight.bold,color: Colors.white,
                  fontFamily: 'Segoe',
                ),

              ),
      ),
      Padding(
          padding: const EdgeInsets.all(0.2),
          child: SizedBox(
                  width: 300,
                  height: 80.0,
          child:
          Text('Stay home we are here for your safety.',
            style: TextStyle(fontSize: 23.5,
              fontFamily: 'Segoe',
              fontWeight: FontWeight.bold,color: Colors.white,

            ),

          ),
                ),
      ),


      Padding(
          padding: const EdgeInsets.all(5.0),
          child:
              Image.asset("assets/sticker2.jpg",
                width: 500,
                height: 400,

              ),
      ),

              Padding(
                padding: const EdgeInsets.all(70.0),


                child:
                   SizedBox(
                     width:300.0,
                     height:40.0,
                  child:
                  ElevatedButton.icon(

                    onPressed: () {
                      // Navigator.pushReplacement(context,
                      // MaterialPageRoute(builder: (context)=> welcomepage()),
                      // );

                    },
                    style:ElevatedButton.styleFrom(padding:EdgeInsets.all(0),primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )
                    ),
                    label: Text('Get Start',style: TextStyle(color: Color(0xfff2B8ECF),fontSize: 25.0,
                      fontFamily: 'Segoe',
                    ),
                    ),

                    icon:Icon(Icons.arrow_forward_ios_rounded,
                      size: 30.0,
                      color: Color(0xfff2B8ECF),

                    ) ,

                ),
                   ),
              ),
      ]
      ),
    ),
        );

  }
}



