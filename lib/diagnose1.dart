import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  XFile? image;

  final ImagePicker picker = ImagePicker();
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }


  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            title: Text('Please choose media to select'),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });


  }

  @override
  Widget build(BuildContext context) {
    final photo = buildImage(
        '');
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
      backgroundColor: Colors.lightBlue,
      leading: Icon(
        Icons.menu,color:Colors.white,
      ),
      actions: [Image.asset("assets/di2.jpg")],
      title:Text('Diagnose',
        style:TextStyle(fontSize: 38.5,color: Colors.white, fontStyle: FontStyle.italic),
      ),
    ),
      body: Center(
       // child:
        //DottedBorder(
          //  borderType: BorderType.Circle,
           // dashPattern: const [8, 4],
         //   strokeCap: StrokeCap.round,
          //  padding: const EdgeInsets.all(5),
           // color: Colors.white,
           // strokeWidth: 1,
           // child: ClipOval(child: photo)
      //  ),
        child:
        Column(
          children:[
         Padding(
          padding: const EdgeInsets.all(60.0),
          child:
            ElevatedButton.icon(

              onPressed: () {
                myAlert();

              },

              icon:Icon(Icons.photo_camera,
              size: 24.0,
                color: Colors.lightBlue,


              ) ,
                style:ElevatedButton.styleFrom(primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                ),


              label: Text('Upload Photo',style: TextStyle(color: Colors.lightBlue,fontSize: 35.0,),
              )

        ),


        ),


            image != null
                ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.file(

                  File(image!.path),
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                ),
              ),
            )
                : Text(
              "",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
  Widget buildImage(String url) => Image.network(
    url,
    width: 180,
    height: 180,
    fit: BoxFit.cover,
  );
}


