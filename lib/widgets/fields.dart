import 'package:flutter/material.dart';
import 'validations.dart';
import 'decos.dart';

getField(String lbl)
{
return TextFormField
		(
		   inputFormatters: [ getIf(lbl) ,] ,
		   decoration: getInpDeco(lbl),
	           keyboardType: getKbd(lbl),
		   obscureText: (lbl=='Password')?true:false,
		   onFieldSubmitted: 
                      (val) 
			{
                           print('submitted value=$val');
                      
                      	},
  	           validator:
		      (val)
		       {
			  	String value= val ?? '';
				return valCheck(lbl,value);
			 
                       } ,
		   onSaved:
		      (val)
		       {
 			  print('saving $val');
                       } ,
		    onChanged:
		      (val)
		       {
 			  print('changed value=$val');
                       } ,
		   
		);
}
