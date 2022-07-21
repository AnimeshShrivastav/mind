import 'package:flutter/material.dart';

//import 'models/*.dart';
import 'screens/personal.dart';
import 'screens/finance.dart';
import 'screens/home.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() 
{
  runApp(App());
}

class App extends StatelessWidget 
{
  Widget build(BuildContext bc) 
  {
	return 
		MaterialApp
		( 
		  navigatorKey:navigatorKey,
		  initialRoute: '/home',
		  routes:<String,WidgetBuilder>
			{
				'/home':(bc)=>Home(),
			//	'/about':(bc)=>Contact(),
				'/personal':(bc)=>Personal(),
				'/finance':(bc)=>Finance(),
			}
		);
		
   }
}


