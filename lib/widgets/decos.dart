import 'package:flutter/material.dart';

getInpDeco(String lbl)
{
return InputDecoration
			(
			//cursorColor: Colors.black,
              		
			
			focusedBorder: OutlineInputBorder(
            			borderSide: BorderSide(color: Colors.white),
            			borderRadius: BorderRadius.circular(25.7),
         			 ),

          		enabledBorder: UnderlineInputBorder(
            			borderSide: BorderSide(color: Colors.white),
            			borderRadius: BorderRadius.circular(25.7),
          			),
			border: OutlineInputBorder(
        			borderRadius: BorderRadius.circular(10.0),
				borderSide: BorderSide(
                				width: 0, 
                				style: BorderStyle.none,
            				),
     				 ),
			filled:true,
			hintStyle: new TextStyle(color: Colors.cyan),
         		hintText: lbl,
          		fillColor: Colors.blueAccent,
	                labelText: lbl,
			labelStyle:TextStyle(color: Colors.white),
			contentPadding: EdgeInsets.all(16)
			)
;
}