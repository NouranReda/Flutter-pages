import 'package:flutter/material.dart';
class pass extends StatelessWidget {
  const pass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
            Icons.arrow_back,color:Color(0xfff2B8ECF),
        ),
        title:Text('Password',
          style:TextStyle(fontSize: 35.0,color:Color(0xfff2B8ECF) ,fontFamily: 'Segoe',),
        )
        ,

      ),
      body:
      Padding(
        padding: const EdgeInsets.all(70.0),
        child:

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            Image.asset("assets/photo_2022-12-11_15-53-51.jpg",
              height: (300),width: (2000),),


           Text(
              'Change password Successfully!',
              style: TextStyle(fontSize: 27.5,
                fontWeight: FontWeight.bold,color:Color(0xfff2B8ECF),
                fontFamily: 'Segoe',
              ),

            ),

        Padding(
          padding: const EdgeInsets.all(40.0),
          child:
          SizedBox(
          width:double.infinity,
          height:60.0,
            child:
            ElevatedButton(

            onPressed: () {
              // Navigator.pushReplacement(context,
              // MaterialPageRoute(builder: (context)=> welcomepage()),
              // );

            },
              child: Text("ok",style: TextStyle(color: Colors.white,fontSize: 37.0,fontFamily: 'Segoe',
              ),),
            style:ElevatedButton.styleFrom(padding:EdgeInsets.all(0),primary: Color(0xfff2B8ECF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(150),
                )
            ),
            ),
          ),
        ),
          ],
        ),
      ),

    );


  }
}


