import 'package:flutter/material.dart';

class genderchange extends StatefulWidget {
  const genderchange({Key? key}) : super(key: key);

  @override
  State<genderchange> createState() => _genderchangeState();
}

class _genderchangeState extends State<genderchange> {
  String?gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,color:Color(0xfff2B8ECF),
        ),
        title:Text('Gender',
          style:TextStyle(fontSize: 30.0,color: Color(0xfff2B8ECF),
            fontFamily: 'Segoe',
          ),),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child:
        Column(
          children: [
            RadioListTile(
              title: Text("Male",style: TextStyle(fontSize: 25.0,color:Color(0xfff2B8ECF),
                fontFamily: 'Segoe',
              ),),
              value: "male",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              },
            ),

            RadioListTile(
              title: Text("Female",style: TextStyle(fontSize: 25.0,color:Color(0xfff2B8ECF)
                ,fontFamily: 'Segoe',
              ), ),
              value: "female",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              },
            ),
          ],
        ),
      ),
    );

  }
}




