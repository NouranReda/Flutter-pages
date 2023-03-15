import 'package:flutter/material.dart';
class emailchange extends StatelessWidget {
  const emailchange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar:AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
        Icons.arrow_back,color:Color(0xfff2B8ECF),
    ),
    title:Text('E-mail',
    style:TextStyle(fontSize: 30.0,color: Color(0xfff2B8ECF),fontFamily: 'Segoe',),),
    ),
      body: Padding(padding: const EdgeInsets.all(20.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(

                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(color:Color(0xfff2B8ECF) ,) ),
                labelText: 'Email address',
                labelStyle: TextStyle(color:Color(0xfff2B8ECF) ,fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: 'Segoe',),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xfff2B8ECF))),
                iconColor:Color(0xfff2B8ECF) ,
                prefixIcon: Icon(Icons.email_outlined,color: Color(0xfff2B8ECF),
                ),
                prefixIconColor:Color(0xfff2B8ECF) ,
                border: OutlineInputBorder(),

              ),
            ),

            SizedBox(
              height: 30.0,
              width: double.infinity,

            ),

            Container(
             alignment: Alignment.topRight,
              width: 350,
              child:
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(context,
                  // MaterialPageRoute(builder: (context)=> welcomepage()),
                  // );
                },
                child: Text("change",style: TextStyle(color:Color(0xfff2B8ECF) ,fontSize: 25.0,fontFamily: 'Segoe',),),
                style:ElevatedButton.styleFrom(padding:EdgeInsets.all(0),primary: Colors.white,
                    side: const BorderSide(
                      color:Color(0xfff2B8ECF) ,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(500),
                    ),

                ),
              ),
            )
          ],
        ),
      )

    );
  }
}
