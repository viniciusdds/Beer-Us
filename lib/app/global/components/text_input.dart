import 'package:flutter/material.dart';

class BeerUsTextInput extends Container {

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Color(0xffffe194)
        ),
        child: Row(
          children: [
            Icon(Icons.mail_outline),
            Expanded(
              child: TextFormField(
                //controller: ,
                textAlign: TextAlign.center,
                validator: (str){
                  return null;
                },
                decoration: InputDecoration(
                    hintText: "E-mail",
                    helperStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        letterSpacing: 0.90
                    ),
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: (){},
              child: Icon(Icons.remove_red_eye_outlined),
            ),
          ],
        )
    );
  }
}
