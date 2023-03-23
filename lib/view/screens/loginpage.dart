import 'package:flutter/material.dart';
import 'package:tour/constants/images_constants.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Stack(children: [
                Image(image: AssetImage(car)),
                Positioned(
                  left: 20,
                    top: 60,
                    child: Text("Pick-and-Drop-7",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),)),

              ]
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,top: 5),
                  child: Column(
                    children: [

                      Text("𝐄𝐱𝐩𝐥𝐨𝐫𝐞 𝐓𝐫𝐚𝐯𝐞𝐥𝐥𝐢𝐧𝐠 𝐖𝐢𝐭𝐡 𝐏𝐢𝐜𝐤-𝐚𝐧𝐝-𝐃𝐫𝐨𝐩-𝟕",style: TextStyle(letterSpacing: 0.5,fontWeight: FontWeight.w400,fontSize: 22,color: Colors.white),),
                      SizedBox(height: 22,),
                  Container(
                    width: 345,
                    height: 35,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(6.0) ),
                    child: Center(child: Text("Continue With Phone Number",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),)),

                  ),

                      SizedBox(height: 16,),
                      Text("By continuing,you agree that you have read and accept our T&C’s  and Privacy Policy",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey.shade500),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}
