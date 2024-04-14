import 'package:flutter/material.dart';
class Decorations{

  InputDecoration setDecoTextFeild()
  {
    
    return  const InputDecoration(
            label:Text("") ,
            
            suffixIcon: Icon(Icons.password),// icon after 
            prefixIcon: Icon(Icons.remove_red_eye),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            border: OutlineInputBorder(
              borderSide:BorderSide(color: Colors.green,style: BorderStyle.solid,width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
               ),


               focusedBorder: OutlineInputBorder(
              borderSide:BorderSide(color: Colors.blueGrey,style: BorderStyle.solid,width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
               ),


               errorBorder: OutlineInputBorder(
              borderSide:BorderSide(color: Colors.red,style: BorderStyle.solid,width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
               )

          );
  }
}