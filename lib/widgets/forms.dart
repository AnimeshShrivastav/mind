import 'fields.dart';
import 'package:flutter/material.dart';


final _formKey = GlobalKey<FormState>();

getPersonalForm()
{
 return 
  Form
   (
     key: _formKey,
	 autovalidateMode: AutovalidateMode.onUserInteraction,
     child: Column
      (
	children: 
	   <Widget>
	      [
		getField('UserName'),
		SizedBox( height: 20),

		getField('Email'),
		SizedBox( height: 20),

		getField('Password'),
		SizedBox( height: 20),

		getField('Phone'),
		SizedBox( height: 20),
		
		getField('Pin'),
	      ],
      ),
    )
 ;
}