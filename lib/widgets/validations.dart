import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

getKbd(String lbl)
{
switch(lbl)
				{
				 case 'Password':return TextInputType.visiblePassword;break;
				 case 'Phone':return TextInputType.phone;break;
				case 'Email':return TextInputType.emailAddress;break;
				case 'Pin':return TextInputType.number;break;
				 default:return TextInputType.visiblePassword;break;
				}
}

getIf(lbl)
{
	switch(lbl)
	{
		 case 'Password':
			return FilteringTextInputFormatter.deny(RegExp(r'[(\s)]+'));  //dont allow space
			break;
		 case 'Phone':
			return FilteringTextInputFormatter.digitsOnly;
			break;
		case 'Email':
			return FilteringTextInputFormatter.deny(RegExp("`(\s)"));
			//return FilteringTextInputFormatter.allow(RegExp(r'[\w]+@'));
			break;
		case 'Pin':
			return FilteringTextInputFormatter.digitsOnly;
			break;
		 default:
			return FilteringTextInputFormatter.deny(RegExp("`"));
			break;
	}
}

valCheck(String lbl,String val)
{
	switch(lbl)
	{
		 case 'Password':
			return null;  //dont allow space
			break;
		 case 'Phone':
			if(val.length==10)return null;
			else return 'mobile phone to have 10 digits!';
			break;
		case 'Email':
			if(val == null || val.isEmpty || !val.contains('@') || !val.contains('.'))
					{
    					return 'Invalid Email...';
					}
			else return null;
			break;
		case 'Pin':
			if(val.length<=6 && val.length>=4)return null;
			else return 'pin to have 4 to 6 digits!';
			break;
			
		 default:
			return null;
			break;
	}
}
