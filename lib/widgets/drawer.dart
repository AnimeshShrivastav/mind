import 'package:flutter/material.dart';
import '../main.dart';

getDrawer()
{
return 
  Drawer
  (
    child: 
      ListView
       (
         children: <Widget> 
	   [
            DrawerHeader
              (
               decoration: BoxDecoration
                (
                 //color: Colors.green,
                ),
                child: Text
		(
                'Welcome to the Memory App!',
                  style: TextStyle
			(
                  		color: Colors.green,
                  		fontSize: 24,
                	),
                ),
               ),
            ListTile
		(
                title: Text('Goto Personal Details.'),
		onTap:()
		{
			navigatorKey.currentState?.pushNamed('/personal');
			
		},
            	),
            ListTile
		(
                title: Text('Goto Financial Details.'),
		onTap:()
		{
			
			navigatorKey.currentState?.pushNamed('/finance');
			
		},
            	),
          ],
	),
   )
  ;
}