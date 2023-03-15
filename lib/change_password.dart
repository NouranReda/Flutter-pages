import 'package:flutter/material.dart';
class chang_pass extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2B8ECF),

      body:
      Padding(
        padding: const EdgeInsets.all(30.0),
      child:
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  // Navigator.pushReplacement(context,
                  // MaterialPageRoute(builder: (context)=> pass()),
                  // );

                },
                icon: Icon(Icons.arrow_back_ios_rounded,
                  size: 30.0,
                  color: Colors.white,
                ),
                style:
                ElevatedButton.styleFrom(shape: CircleBorder(),
                    padding: EdgeInsets.all(10), primary: Colors.blue),
                label: Text(''),
              ),
         SizedBox(
        height: 60.0,

                ),

        TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue,
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(60.0),
                    borderSide: BorderSide(color: Colors.blue,)),
                    labelText: 'Current Password',
                    labelStyle: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold,
                      fontFamily: 'Segoe',
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              SizedBox(
                height: 35.0,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue,
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(60.0),
                      borderSide: BorderSide(color: Colors.blue,)),
                  labelText: 'New Password',
                  labelStyle: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold,
                    fontFamily: 'Segoe',),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              TextFormField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue,
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(60.0),
                      borderSide: BorderSide(color: Colors.blue,)),
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold,
                      fontFamily: 'Segoe',
                      ),
                  border: OutlineInputBorder(),
              ),
              ),
      SizedBox(
          width: double.infinity,
          height:35.0,
      ),

      SizedBox(
            width: double.infinity,
          height:50.0,
            child:
            ElevatedButton(

              onPressed: () {
                // Navigator.pushReplacement(context,
                // MaterialPageRoute(builder: (context)=> welcomepage()),
                // );
              },
              child: Text("Change",style: TextStyle(color: Colors.white,fontSize: 32.0,
                fontFamily: 'Segoe',
              ),),
              style:ElevatedButton.styleFrom(padding:EdgeInsets.all(0),primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(150),
                  )
              ),
            ),
          ),

            ]
      ),
      ),
      );
  }
}
