import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/bnb.dart';
import '../widgets/pfb.dart';
import '../widgets/fab.dart';
import '../widgets/drawer.dart';
import '../widgets/forms.dart';

class Personal extends StatelessWidget
{

	Widget build(BuildContext bc)
	{
		return
			Scaffold(
				resizeToAvoidBottomInset: false,
				backgroundColor: Colors.teal,
				appBar:getAppBar('Personal Details'),
				floatingActionButton:getFab(),
				floatingActionButtonLocation:getFabLoc(),
				//persistentFooterButtons:getPfb(),
				bottomNavigationBar:getBnb(),
				drawer:getDrawer(),
				body:SafeArea
					(
						child:getPersonalForm(),
					)
			)
		;
	}
}